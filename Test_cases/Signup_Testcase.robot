*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Signup Testcase
        #create webdriver    chrome  executablepath="C:\Users\muthukumar\Automation\Driver\chromedriver.exe"
        open browser     https://reg-dev.cmwrcregistration.org/ChinmayaMemberRegDEV/    edge
        sleep       5
        Click element    xpath://*[@id="kt_sign_in_form"]/a[2]/div/button/span
        sleep       5
        Click Element      xpath://input[@placeholder='User Name']
        Input Text      xpath://input[@placeholder='User Name']     muthu1234
        Click Element      xpath://input[@placeholder='Password']
        Input text    xpath://input[@placeholder='Password']    muthu@123
        Click Element      xpath://input[@placeholder='Confirm Password']
        Input text    xpath://input[@placeholder='Confirm Password']    muthu@123
        Click Element      xpath://input[@placeholder='Email Address']
        Input text    xpath://input[@placeholder='Email Address']    muthutester+1@gmail.com
        Click element      xpath://*[@id="kt_app_content_container mrgtop"]/select
        sleep       5
        Click element      xpath://*[@id="kt_app_content_container mrgtop"]/select/option[5]
        Click element      xpath://input[@placeholder='Enter your answer']
        sleep       5
        ${num1}     Get_number_xpath    xpath://*[@id='sum1']
        ${num2}     Get_number_xpath    xpath://*[@id='sum2']
        ${result}       Add_number      ${num1}     ${num2}
        Click Element      xpath://input[@placeholder='Enter your answer']
        Input Text      xpath://input[@placeholder='Enter your answer']     ${result}
        Sleep       5
        Element should be visible     xpath://*[contains(text(), ' Cancel ')]
        Element should be visible     xpath://*[contains(text(), 'Create Account')]
        Click element       xpath://*[contains(text(), 'Create Account')]
        Sleep       5
        Click element           xpath://*[contains(text(), 'Cancel')]
        Sleep       5

*** Keywords ***

add_number
        [Arguments]     ${num1}     ${num2}
        ${result} =     Evaluate    ${num1} + ${num2}
        [Return]        ${result}

Get_number_xpath
        [Arguments]     ${xpath}
        ${text} =    Get text    ${xpath}
        ${number} =     Convert to integer    ${text}
        [Return]       ${number}