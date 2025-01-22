*** Settings ***
Library    Selenium2Library
Resource    ./dataTest/variables.robot
Resource    ./dataTest/keywords.robot


*** Test Cases ***

TC-001_Verify click AddElement button 
    openWeb
    addElement
    Close Browser
    
TC-002_Verify click RemoveElement button
    openWeb
    addElement       5
    removeElement    5
    Close Browser

TC-003_Verify click Clear Storage button
    openWeb
    addElement    6
    clearStorage
    Close Browser