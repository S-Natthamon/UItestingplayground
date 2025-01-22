*** Settings ***
Library    SeleniumLibrary
Resource   ./dataTest/variables.robot
Resource   ./dataTest/keywords.robot

*** Test Cases ***
TC-001_Verify redirect click nearform button to Git page
    openWeb
    clickNearForm
    goToGit
    expectResultNearForm

TC-002_Verify the search event a correct
    openWeb
    searchOnNearFrom

TC-003_Verify the search event level a correct
    openWeb
    selectAll
    selectEasy
    selectMedium
    selectHard
    Close All Browsers

TC-004_Verify the change language a correct
    openWeb
    changelanguageBrazil
    changelanguageEnglish
    changelanguageFrench
    Close Browser