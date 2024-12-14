*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Login Testcase
        #create webdriver    chrome  executablepath="C:\Users\muthukumar\Automation\Driver\chromedriver.exe"
        #open browser     https://www.google.com/    edge
        open browser     https://reg-dev.cmwrcregistration.org/ChinmayaMemberRegDEV/    edge
        sleep       5
        Element should be visible       xpath://*[contains(text(), 'Login to your account')]
        Element should be visible       xpath://input[@placeholder='User Name']
        Click Element      xpath://input[@placeholder='User Name']
        Input Text      xpath://input[@placeholder='User Name']     rakesh123
        Element should be visible       xpath://input[@placeholder='Password']
        Click Element      xpath://input[@placeholder='Password']
        Input text    xpath://input[@placeholder='Password']    rakesh@123
        sleep       2
        ${num1}     Get_number_xpath    xpath://*[@id='sum1']
        ${num2}     Get_number_xpath    xpath://*[@id='sum2']
        ${result}       Add_number      ${num1}     ${num2}
        Click Element      xpath://input[@placeholder='Enter your answer']
        Input Text      xpath://input[@placeholder='Enter your answer']     ${result}
        Sleep       2
        Element should be visible       xpath://*[contains(text(), 'Forgot User ID')]
        Element should be visible       xpath://*[contains(text(), 'Change Password')]
        Element should be visible       xpath://*[contains(text(), 'Forgot Password')]
        sleep       2
        Element should be visible     xpath://button[contains(text(),'Login')]
        Element should be visible     xpath://button[contains(text(),' External Volunteer Signup ')]
        Element should be visible     xpath://*[contains(text(), 'Create Your Account')]
        #Element should be visible     xpath://*[contains(text(), 'Trial Class')]
        Click element    xpath://button[contains(text(),'Login')]
        sleep       2
        #Click element    xpath:////button[@class = 'btn btn-primary btn-sm fs-6 p-3 mb-2 btnwidth']

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
