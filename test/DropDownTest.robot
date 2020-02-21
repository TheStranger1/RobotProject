*** Settings ***
Library    SeleniumLibrary   

*** Variables ***
${URL}    https://www.facebook.com/
${Browser}    chrome





*** Test Cases ***
Handling DropDowns
    Open Browser      ${URL}     ${Browser}
    Select From List By Label    id=day  16
    Set Browser Implicit Wait    10
    Select From List By Index    id=day    4
    Set Browser Implicit Wait    10  
    Close Browser
      
    
         
    


     
  

    
       