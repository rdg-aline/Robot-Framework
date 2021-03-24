*** Settings ***
Library    SeleniumLibrary    

Suite Setup          

Suite Teardown           

Test Setup        

Test Teardown           



*** Test Cases ***
MyFirstTest
    [Tags]     minha1tag
    Log    Hello World...  

PrimeiroSeleniumTest
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text      name=q              aline    
    Click Button    name=btnK    
    Sleep    2    
    Log    teste completo    
    Close Browser

    
 

SimplesLoginTest
    [Documentation]    this is simple login test
    Open Browser        https://opensource-demo.orangehrmlive.com/    chrome
    Set Browser Implicit Wait    5
    Input Text          id=txtUsername    Admin    
    Input Password      id=txtPassword    admin123
    Click Button    id=btnLogin    
    Click Element    id=welcome    
    Click Element    link=Logout    
    Log    teste completo    
    Close Browser
 
   
SimplesLoginComVariavelTest
    Open Browser        ${url}    chrome
    Set Browser Implicit Wait    10
    Input Text          id=txtUsername    ${credenciais}[0]    
    Input Password      id=txtPassword    ${credenciais}[1]
    Click Button    id=btnLogin    
    Click Element    id=welcome 
    Click Element    link=Logout
    Log    teste completo com variaveis
    Close Browser


SimplesLoginComMinhasKeywordsVariavelTest
    [Documentation]    teste completo com variaveis e  keywords   
    Open Browser        ${url}    chrome
    Set Browser Implicit Wait    20
    logar 
    Click Element    id=welcome 
    Click Element    link=Logout
    Close Browser
   

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
@{credenciais}    Admin     admin123

*** Keywords ***
logar
    Input Text          id=txtUsername    ${credenciais}[0]    
    Input Password      id=txtPassword    ${credenciais}[1]
    Click Button        id=btnLogin  


    
