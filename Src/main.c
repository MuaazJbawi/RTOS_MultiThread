/**
  ******************************************************************************
  * @file    RTOS_MultiThread
  * @author  Muaaz Al-Jbawi
  * @brief   This example describes how to use RTOS Multi Threads to for example continuously check the light level outside
  * so once it gets dark the LED inside the house will turn on automatically .
  ******************************************************************************
  **/


/**
 * @file main.cpp
 * @brief LED control using FreeRTOS on STM32.
 */

#include "main.h"
#include "cmsis_os.h"

/**
 * @class LEDController
 * @brief Controls LED blinking using FreeRTOS threads.
 */
class LEDController {
public:
    static osThreadId LEDThread1Handle;
    static osThreadId LEDThread2Handle;

    // Function prototypes
    static void LED_Thread1(void const *argument);
    static void LED_Thread2(void const *argument);
    static void SystemClock_Config();
    static void Error_Handler();
};

// Static member initialization
osThreadId LEDController::LEDThread1Handle, LEDController::LEDThread2Handle;

/**
 * @brief Main function. Initializes hardware, creates threads, and starts scheduler.
 * @return int
 */
int main(void)
{
    HAL_Init(); // Initialize the HAL Library

    // Configure the system clock
    LEDController::SystemClock_Config();

    // Initialize LEDs
    BSP_LED_Init(LED1);
    BSP_LED_Init(LED3);

    // Define threads for LED control
    osThreadDef(LED1, LEDController::LED_Thread1, osPriorityNormal, 0, configMINIMAL_STACK_SIZE);
    osThreadDef(LED3, LEDController::LED_Thread2, osPriorityNormal, 0, configMINIMAL_STACK_SIZE);

    // Create threads
    LEDController::LEDThread1Handle = osThreadCreate(osThread(LED1), nullptr);
    LEDController::LEDThread2Handle = osThreadCreate(osThread(LED3), nullptr);


    osKernelStart();

    // Infinite loop
    while (true);
}

/**
 * @brief Thread control function for LED1.
 * @param argument Not used.
 */
void LEDController::LED_Thread1(void const *argument)
{
    uint32_t count = 0;

    for(;;)
    {

        count = osKernelSysTick() + 5000;


        while (count >= osKernelSysTick())
        {
            BSP_LED_Toggle(LED1);
            osDelay(200); // 200ms delay
        }


        BSP_LED_Off(LED1);


        osThreadSuspend(nullptr);


        count = osKernelSysTick() + 5000;


        while (count >= osKernelSysTick())
        {
            BSP_LED_Toggle(LED1);
            osDelay(400);
        }

        // Resume the other thread
        osThreadResume(LEDThread2Handle);
    }
}

/**
 * @brief Thread control function for LED3.
 * @param argument Not used.
 */
void LEDController::LED_Thread2(void const *argument)
{
    uint32_t count;

    for(;;)
    {

        count = osKernelSysTick() + 10000;


        while (count >= osKernelSysTick())
        {
            BSP_LED_Toggle(LED3);
            osDelay(500);
        }


        BSP_LED_Off(LED3);


        osThreadResume(LEDThread1Handle);


        osThreadSuspend(nullptr);
    }
}

/**
 * @brief Configures the system clock.
 */
void LEDController::SystemClock_Config()
{
    RCC_ClkInitTypeDef RCC_ClkInitStruct;
    RCC_OscInitTypeDef RCC_OscInitStruct;
    HAL_StatusTypeDef ret = HAL_OK;

    // Enable Power Control clock
    __HAL_RCC_PWR_CLK_ENABLE();

    // Set the voltage scaling
    __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

    // Configure the Oscillator
    RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
    RCC_OscInitStruct.HSEState = RCC_HSE_ON;
    RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
    RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
    RCC_OscInitStruct.PLL.PLLM = 8;
    RCC_OscInitStruct.PLL.PLLN = 360;
    RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
    RCC_OscInitStruct.PLL.PLLQ = 7;
    RCC_OscInitStruct.PLL.PLLR = 6;

    // Apply oscillator configuration
    ret = HAL_RCC_OscConfig(&RCC_OscInitStruct);
    if(ret != HAL_OK) Error_Handler();

    // Enable OverDrive for high frequency
    ret = HAL_PWREx_EnableOverDrive();
    if(ret != HAL_OK) Error_Handler();

    // Configure the clock source and dividers
    RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
    RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
    RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
    RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
    RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

    // Apply clock configuration
    ret = HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5);
    if(ret != HAL_OK) Error_Handler();
}

/**
 * @brief Error handler function.
 */
void LEDController::Error_Handler()
{
    // Turn on LED3 to indicate error
    BSP_LED_On(LED3);
    while (true) {}
}

#ifdef USE_FULL_ASSERT
/**
 * @brief Assert Failed function.
 * @param file File in which the assert failed.
 * @param line Line at which the assert failed.
 */
void assert_failed(uint8_t* file, uint32_t line)
{
    while (true) {}
}
#endif
