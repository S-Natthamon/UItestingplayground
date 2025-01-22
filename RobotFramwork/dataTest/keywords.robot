*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***

openWeb
    Open Browser    ${URL}    ${browser} 
    Maximize Browser Window

clickNearForm 
    Click Element   ${btn_nearform}
goToGit
    Click Link   //a[@href="https://help.github.com/pages/"]
expectResultNearForm 
    Element Text Should Be    //h1[contains(@id, "title-h1")]   GitHub Pages documentation
    Close Browser

searchOnNearFrom
    FOR  ${expectSearch}  IN  @{input_searchPage}
        Input Text    ${btn_searchPage}    ${expectSearch}
        Sleep    3s
        ${resultText}=  Get Text    ${result_text_searchPage} 
        Log    ${resultText}
        #Should Not Contain    ${resultText}    ${expectSearch}
    END
    Close Browser

selectAll
    Click Button    ${btn_searchLevel}   
    Sleep    2s
    Click Element   ${btn_searchLevelAll}
    Element Should Be Visible    ${btn_searchLevel}    All
    Element Should Be Enabled    ${result_selectAll}
    Sleep    1s

selectEasy
    Click Button    ${btn_searchLevel}   
    Sleep    2s
    Click Element    ${btn_searchLevelEasy}
    Element Should Be Visible    ${btn_searchLevel}    Easy
    sleep    1s

selectMedium
    Click Button    ${btn_searchLevel}   
    Sleep    2s
    Click Element    ${btn_searchLevelMedium} 
    Element Should Be Visible    ${btn_searchLevel}    Medium
    # Element Should Be Enabled    ${result_selectMedium}
    sleep    1s

selectHard
    Click Button    ${btn_searchLevel}   
    Sleep    2s
    Click Element    ${btn_searchLevelHard}
    Element Should Be Visible    ${btn_searchLevel}    Hard
    # Element Should Be Enabled    ${result_selectHard}
    sleep    1s

changelanguageEnglish
    Click Element    ${btn_language}
    Sleep    3s
    Click Element    ${btn_languageEnglish}
    Element Should Be Visible    ${result_language}    Testing Playground

changelanguageFrench
    Click Element    ${btn_language}
    Sleep    3s
    Click Element    ${btn_languageFrench}
    Element Should Be Visible    ${result_language}    Terrain de jeu pour les tests

changelanguageBrazil
    Click Element    ${btn_language}
    Sleep    3s
    Click Element    ${btn_languageBrazil}
    Element Should Be Visible    ${result_language}    Playground de Testes

addElement
    [Arguments]    ${time}=5
    Click Element    ${btn_addorRemove}
    FOR  ${resultAddElement}  IN RANGE   ${time}
        Click Button    ${btn_addElement}
        Wait Until Element Is Visible    //button[contains(text(),'Remove Element')]
        Sleep    1s
    END
    Sleep    3s
    
removeElement
    [Arguments]    ${time}=5
    FOR  ${resultremoveElement}  IN RANGE  ${time}
        Click Button    ${btn_removeElement}
        Wait Until Element Is Not Visible    //div[contains(@class,'element')]
        Sleep    1s
    END
    Sleep    3s
    Wait Until Element Is Not Visible    //div[contains(@class,'element')]

clearStorage
    Click Button    ${btn_clearStorage}
    Sleep    3s
    Wait Until Element Is Not Visible    //div[contains(@class,'element')]

checked_CheckBox
    Click Element     ${btn_checkBox}

    [Arguments]    ${checkbox_locator}
    ${is_checked}=    Get Element Attribute    ${checkbox_locator}    checked
    Run Keyword If    '${is_checked}' == 'true'    Click Element    ${checkbox_locator}
    
    Checkbox Should Not Be Selected    ${checkb_checked}
    Checkbox Should Not Be Selected    ${checkb_disabled}
    Checkbox Should Not Be Selected    ${checkb_required}

disabled_CheckBox
    Select Checkbox    ${checkb_disabled}

required_CheckBox
    Click Element     ${btn_checkBox}
    Wait Until Element Is Visible      ${checkb_required}
    #Log To Console    ${checkb_required}
    Select Checkbox    ${checkb_required}

parent_CheckBox
    Select Checkbox    ${checkb_parent}

child_CheckBox
    Select Checkbox    ${checkb_child1}

favoriteIcon_CheckBox
    Select Checkbox    ${checkb_favoriteIcon}

bookmarkIcon_CheckBox
    Select Checkbox    ${checkb_bookmarkIcon}

