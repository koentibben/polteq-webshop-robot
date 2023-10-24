*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Keywords ***
Navigate To Log In Page
    click element    ${NavBarSignInButton}