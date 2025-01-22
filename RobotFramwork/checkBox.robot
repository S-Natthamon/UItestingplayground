*** Settings ***
Library    Selenium2Library
Resource    ./dataTest/variables.robot
Resource    ./dataTest/keywords.robot


*** Test Cases ***

TC-001_Verify uncheckbox Checked 
    openWeb
    checked_CheckBox    ${checkb_checked}

TC-002_Verify checkbox Disabled 
    openWeb

TC-003_Verify checkbox select required field (*)
    openWeb
    required_CheckBox

TC-004_Verify select Child 1 checkbox
    openWeb

TC-005_Verify select Child 2 checkbox
    openWeb

TC-006_Verify select Parent
    openWeb
    
TC-007_Verify select icon
    openWeb