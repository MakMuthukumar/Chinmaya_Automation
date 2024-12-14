*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Login Testcase ChangePassword Testcase
        #create webdriver    chrome  executablepath="C:\Users\muthukumar\Automation\Driver\chromedriver.exe"
        #open browser     https://www.google.com/    edge
        open browser     https://reg-dev.cmwrcregistration.org/ChinmayaMemberRegDEV/    edge
        sleep       5
       Element should be visible       xpath://*[contains(text(), 'Change Password')]
        Click element       xpath://*[contains(text(), 'Change Password')]
        Sleep       10
        Element should be visible       xpath://*[contains(text(), 'Change Password')]
        Element should be visible       xpath://input[@placeholder='User Name']
        Click Element      xpath://input[@placeholder='User Name']
        Input Text      xpath://input[@placeholder='User Name']    rakesh123
        Element should be visible       xpath://input[@placeholder='Enter Current Password']
        Click Element      xpath://input[@placeholder='Enter Current Password']
        Input Text      xpath://input[@placeholder='Enter Current Password']   rakesh@123
        Element should be visible       xpath://input[@placeholder='Enter New Password']
        Click Element      xpath://input[@placeholder='Enter New Password']
        Input Text      xpath://input[@placeholder='Enter New Password']   rakesh@123
        Element should be visible       xpath://input[@placeholder='Confirm Password']
        Click Element      xpath://input[@placeholder='Confirm Password']
        Input Text      xpath://input[@placeholder='Confirm Password']   rakesh@123
        Sleep       2
        ${num1}     Get_number_xpath    xpath://*[@id='sum1']
        ${num2}     Get_number_xpath    xpath://*[@id='sum2']
        ${result}       Add_number      ${num1}     ${num2}
        Click Element      xpath://input[@placeholder='Enter your answer']
        Input Text      xpath://input[@placeholder='Enter your answer']     ${result}
        Sleep       5
        Element should be visible     xpath://*[contains(text(), ' Cancel ')]
        Element should be visible     xpath://*[contains(text(), 'Submit')]
        Click element       xpath://*[contains(text(), 'Submit')]
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