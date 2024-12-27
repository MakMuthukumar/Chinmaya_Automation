*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Login Testcase
        #create webdriver    chrome  executablepath="C:\Users\muthukumar\Automation\Driver\chromedriver.exe"
        #open browser     https://www.google.com/    edge
        open browser     https://reg-dev.cmwrcregistration.org/ChinmayaMemberRegDEV/    firefox
        sleep       5
        Element should be visible       xpath://*[contains(text(), 'Login to your account')]
        Element should be visible       xpath://input[@placeholder='User Name']
        Click Element      xpath://input[@placeholder='User Name']
        Input Text      xpath://input[@placeholder='User Name']     qa0
        Element should be visible       xpath://input[@placeholder='Password']
        Click Element      xpath://input[@placeholder='Password']
        Input text    xpath://input[@placeholder='Password']    123456
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
        sleep       10
        Click element    xpath://*[contains(text(), 'Family Registration ')]
        Sleep       5
        Click element    xpath://*[@id="#kt_app_sidebar_menu"]/div[4]/div/div[4]/a/span[2]
        Sleep       5
        Element should be visible     xpath://*[contains(text(), 'Family ID')]
        Element should be visible       xpath://*[@id="kt_app_content_container"]/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[1]/fieldset/div[3]/div[1]/label
        Element should be visible       xpath://*[@id="kt_app_content_container"]/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[1]/fieldset/div[2]/div[1]/label
        Element should be visible       xpath://*[@id="kt_app_content_container"]/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[1]/fieldset/div[4]/div[1]/label
        Element should be visible       xpath://*[@id="kt_app_content_container"]/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[1]/fieldset/div[5]/div[1]/label
        Element should be visible       xpath://button[contains(text(),'Search')]
        Element should be visible       xpath://input[@placeholder='Family ID']
        Element should be visible       xpath://*[@id="kt_app_content_container"]/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[1]/fieldset/div[2]/div[2]/input
        Element should be visible       xpath://*[@id="kt_app_content_container"]/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[1]/fieldset/div[3]/div[2]/input
        Element should be visible       xpath://*[@id="kt_app_content_container"]/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[1]/fieldset/div[4]/div[2]/input
        Element should be visible       xpath://*[@id="kt_app_content_container"]/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[1]/fieldset/div[5]/div[2]/input
        Click Element      xpath://input[@placeholder='Family ID']
        Input Text      xpath://input[@placeholder='Family ID']      6420
        Sleep       3
        Click Element      xpath://button[contains(text(),'Search')]
        Sleep       3
        Click element       xpath://*[@id="mat-mdc-checkbox-2-input"]
        Sleep       5
        Click element       xpath://*[contains(text(), 'Register With Membership')]
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
