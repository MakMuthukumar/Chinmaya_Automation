*** Settings ***
Library  SeleniumLibrary
Library    String
Resource   resource.robot

*** Variables ***

*** Test Cases ***
New_Family_Member Testcase
        #create webdriver    chrome  executablepath="C:\Users\muthukumar\Automation\Driver\chromedriver.exe"
        #open browser     https://www.google.com/    edge
Google Random String Search
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
        Element should be visible     xpath://*[contains(text(), 'Email ID')]
        Element should be visible       xpath://*[contains(text(), 'Last Name')]
        Element should be visible       xpath://*[contains(text(), 'First Name')]
        Element should be visible       xpath://*[contains(text(), 'Home Phone')]
        Element should be visible       xpath://*[contains(text(), 'Gender')]
        Element should be visible       xpath://*[contains(text(), 'Mobile Phone')]
        Element should be visible       xpath://*[contains(text(), 'Marital Status')]
        Element should be visible       xpath://*[contains(text(), 'Home Address')]
        Element should be visible       xpath://input[@placeholder='Last Name']
        Element should be visible       xpath://input[@placeholder='First Name']
        Element should be visible       xpath://input[@placeholder='Email ID']
        Element should be visible       xpath:/html/body/app-layout/div/div/div/div/div/app-content/div/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[2]/app-new-registration/div/form/fieldset/div[5]/input
        Element should be visible       xpath://input[@placeholder='Mobile Phone']
        Element should be visible       xpath://*[contains(text(), 'Register with Member ')]
        Element should be visible       xpath://*[contains(text(), 'Register without Member ')]
        Click Element      xpath:/html/body/app-layout/div/div/div/div/div/app-content/div/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[2]/app-new-registration/div/form/fieldset/div[1]/input
        ${firstname} =       Generate Random String     10    [LETTERS]
        ${lastname} =       Generate Random String     10    [LETTERS]
        ${randomstring} =        Generate Random String    7    [LOWER]
        ${emailid} =        Set variable        ${randomstring}@itarguments.com
        Input Text      xpath:/html/body/app-layout/div/div/div/div/div/app-content/div/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[2]/app-new-registration/div/form/fieldset/div[1]/input     ${firstname}
        Click Element      xpath:/html/body/app-layout/div/div/div/div/div/app-content/div/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[2]/app-new-registration/div/form/fieldset/div[2]/input
        Input Text      xpath:/html/body/app-layout/div/div/div/div/div/app-content/div/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[2]/app-new-registration/div/form/fieldset/div[2]/input      ${lastname}
        Click Element      xpath://input[@placeholder='Email ID']
        Input Text      xpath://input[@placeholder='Email ID']      ${emailid}
        Click Element      xpath:/html/body/app-layout/div/div/div/div/div/app-content/div/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[2]/app-new-registration/div/form/fieldset/div[5]/input
        Input Text      xpath:/html/body/app-layout/div/div/div/div/div/app-content/div/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[2]/app-new-registration/div/form/fieldset/div[5]/input      (998) 877-6655
        Click Element      xpath://input[@placeholder='Mobile Phone']
        Input Text      xpath://input[@placeholder='Mobile Phone']      (998) 877-6655
        Click element       xpath://*[@id="kt_app_content_container"]/app-programregistration/div/app-search-family/div[2]/div[2]/div/div/div[2]/app-new-registration/div/form/fieldset/div[7]/select
        Click element       xpath://*[contains(text(), 'Married')]
        Click element       xpath://*[contains(text(), 'Gender')]
        Click element       xpath://*[contains(text(), 'Male')]
        Click element       xpath://input[@placeholder='Home Address']
        Input text      xpath://input[@placeholder='Home Address']      swfewsfr
        Click element       xpath://input[@placeholder='City']
        Input text      xpath://input[@placeholder='City']      swfewsfr
        Click element       xpath://input[@placeholder='Zip Code']
        Input text      xpath://input[@placeholder='Zip Code']      23423
        Click element       xpath://*[contains(text(), 'Select State')]
        Click element       xpath://*[contains(text(), 'Virgina')]
        Sleep       5
        Click element       xpath://*[contains(text(), 'Register with Member ')]
        Sleep       10
        Click element       xpath:/html/body/div[2]/div/div[6]/button[1]
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
