*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Family_Search Testcase
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
        Click element    xpath://*[@id="#kt_app_sidebar_menu"]/div[3]/a/span[2]
        Sleep       5
        Element should be visible       xpath://*[contains(text(), 'Family ID')]
        Element should be visible       xpath://*[contains(text(), 'Last Name')]
        Element should be visible       xpath://*[contains(text(), 'First Name')]
        Element should be visible       xpath://*[contains(text(), 'Home Phone')]
        Element should be visible       xpath://*[@id="kt_app_content_container"]/app-family/app-search-families/div/div/div/div[3]/div[3]/div[1]/label
        Element should be visible       xpath://*[contains(text(), 'Registrant Type')]
        Element should be visible       xpath://*[@id="kt_app_content_container"]/app-family/app-search-families/div/div/div/div[3]/div[4]/div/label
        Element should be visible       xpath://input[@placeholder='Family ID']
        Element should be visible       xpath://input[@placeholder='Last Name']
        Element should be visible       xpath://input[@placeholder='First Name']
        Element should be visible       xpath://input[@placeholder='Email']
        Click Element      xpath://input[@placeholder='Family ID']
        Input Text      xpath://input[@placeholder='Family ID']     6420
        Sleep       5
        Element should be visible       xpath://button[contains(text(),'Search Family')]
        Click Element      xpath://button[contains(text(),'Search Family')]
        Sleep       10
        Click element       xpath:/html/body/app-layout/div/div/div/div/div/app-content/div/app-family/app-family-list/div/div[4]/div/table/tbody/tr[1]/td[1]/a
        Sleep       10



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
