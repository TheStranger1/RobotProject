*** Settings ***
Library    SeleniumLibrary   

*** Variables ***
${URL}    https://web.latotools.com/pls/rt5.v3.strategydemo.dev/lato.platform.v3
@{Credentials}    lato    Elig@0103
&{LoginData}    username=lato    password=Elig@0103

*** Keywords ***
LoginKey
    Input Text         id=p_user_name    @{Credentials}[0]
    Input Password     id=p_user_pwd     @{Credentials}[1]

*** Test Cases ***
LoginTest
    [Documentation]    This is a login test
    Open Browser      ${URL}     chrome
    Set Browser Implicit Wait    5
    LoginKey
    Click Button       class=login_submit
    Close Browser
    Log              Test Completed       
    


     
  

    
       