*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Keywords ***
Check That Log In Page Is Shown
    wait until location contains    controller=authentication
    element should be visible    ${AuthenticationHeader}