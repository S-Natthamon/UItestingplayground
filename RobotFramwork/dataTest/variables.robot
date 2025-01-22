*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${URL}    https://nearform.github.io/testing-playground/
${browser}    chrome

#nearformPage
${btn_nearform}          //a[@href="#/"]
${btn_searchPage}        //input[@placeholder="Search..."]     
${btn_searchLevelPage}   //span[contains(text(),'Select Difficulty')]
${btn_searchLevel}       //button[@role='combobox' and @aria-controls='radix-:r1:']
${btn_searchLevelAll}    //span[contains(text(), 'All')]
${btn_searchLevelEasy}   //span[contains(text(),'Easy')]
${btn_searchLevelMedium}     //span[contains(text(),'Medium')]
${btn_searchLevelHard}   //span[contains(text(),'Hard')]
${btn_language}          //button[@role='combobox' and @aria-controls='radix-:r0:']
${btn_languageEnglish}   //span[contains(text(),'English')]
${btn_languageFrench}    //span[contains(text(),'Français')]
${btn_languageBrazil}    //span[contains(text(),'Português (Brasil)')]
@{input_searchPage}      dra    file    box    resister
${result_text_searchPage}    //*[@id="root"]/div[2]
${result_selectAll}      //div[@class='grid grid-cols-1 sm:grid-cols-1 md:grid-cols-3 lg:grid-cols-6 xl:grid-cols-8 gap-2']
${result_selectEasy}     //div[@class='mt-6 rounded-2xl p-6 min-h-48 bg-green-100  hover:bg-green-400'] 
${result_selectMedium}   //div[@class='mt-6 rounded-2xl p-6 min-h-48 bg-red-100 hover:bg-yellow-400'] 
${result_selectHard}     //div[@class='mt-6 rounded-2xl p-6 min-h-48 bg-red-100 hover:bg-red-400']
${result_language}       //h1[@class='lg:text-lg font-bold text-foreground']

${btn_addorRemove}       //a[@href="#/add-remove"]
${btn_checkBox}          //a[@href="#/check-box"]

#AddorRemove
${btn_addElement}        //button[contains(@data-testid, "add-element")]
${btn_clearStorage}      //button[contains(@data-testid, "clear-storage")]
${btn_removeElement}     //button[contains(text(),'Remove Element')]

#CheckBox
${checkb_checked}        //label[contains(@data-testid, "checked")]
${checkb_disabled}       //span[contains(text(),'Disabled')]/input
${checkb_required}       //label[contains(@data-testid, "required")]
${checkb_parent}         //span[contains(text(),'Parent')]
${checkb_child1}         //span[contains(text(),'Child')]
${checkb_child2}         //span[contains(text(),'Child')]
${checkb_favoriteIcon}   //button[contains(@data-testid, "favorite")]
${checkb_bookmarkIcon}   //button[contains(@data-testid, "bookmark")]

#LoginForm
${link_LoginForm}        //a[@href="#/login-form"]
${ele_LoginFrom}         //h1[@class='text-2xl']
${text_LoginFrom}        Login Form
${fileId_userName}       //div[contains(@data-testid, "username")]
${fileId_passWord}       //div[contains(@data-testid, "password")]
${input_userName}        admin
${input_passWord}        Passw0rd!
${input_userNameFail}    administrator
${input_passWordFail}    Test1234!
${btn_Login}             //button[contains(@data-testid, "login-button")]

#RadioButton
${radio_btn_red}         //input[contains(@value, "Red")]
${radio_btn_blue}        //input[contains(@value, "Blue")]
${radio_btn_yellow}      //input[contains(@value, "Yellow")]
${radio_btn_purple}      //input[contains(@value, "purple")]
${radio_btn_orange}      //input[contains(@value, "orange")]
${radio_btn_green}       //input[contains(@value, "green")]
${radio_btn_white}       //input[contains(@value, "White")] 

#Tooltips
${btn_deleteIcon}        //span[contains(@data-testid, "delete-button")]
${btn_moreInfo}          //button[contains(@data-testid, "more-info-button")]

#VariousInputs
${btn_clearAll}            //button[contains(text(),'Clear All')]
${fileId_inputText}        //input[contains(@data-testid, "text-input")]
${fileId_inputPassword}    //input[contains(@data-testid, "password-input")]
${fileId_inputNumber}      //input[contains(@data-testid, "number-input")]
${fileId_inputDate}        //input[contains(@data-testid, "date-input")]
${fileId_inputTextArea}    //input[contains(@data-testid, "textarea-input")]
${fileId_outputText}
${fileId_outputPassword}
${fileId_outputNumber}
${fileId_outputDate}
${fileId_outputTextArea}

${input_inputText}        Test
${input_inputPassword}    Test12345678@
${input_inputNumber}      0892354962
${input_inputDate}        2024-12-08
${input_inputTextArea}    AutomateTest
${input_outputText}
${input_outputPassword}
${input_outputNumber}
${input_outputDate}
${input_outputTextArea}

#DragandDrop
#FileDownload
#FileUpload
#Notification
#Silders
#DragandDrop
#DynamicTable