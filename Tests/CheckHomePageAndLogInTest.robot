*** Settings ***
Documentation  Homepage Test Polteq Webshop
Library  SeleniumLibrary
Resource    ../Resources/PageObject/KeywordDefinitionFiles/Homepage.robot
Resource    ../Resources/PageObject/KeywordDefinitionFiles/SignInPage.robot

*** Settings ***


*** Test Cases ***
Check Homepage
    open browser        https://techblog.polteq.com/testshop/index.php
    element should be visible    ${HomepageLogo}
    element should be visible    ${HeaderLinkHomeButton}

Go To Log In Page And Attempt To Log In
    navigate to log in page
    check that log in page is shown
    input text    ${AuthenticationEmailAddressInput}        test@polteq.com
    input text    ${AuthenticationPasswordInput}        PolteqTest2023!
    click element    ${AuthenticationSignInButton}