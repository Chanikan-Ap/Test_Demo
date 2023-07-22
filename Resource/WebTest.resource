*** Settings ***
Resource    ../Resource/CommonLibrary/commonlib.resource
Library    XML

*** Keywords ***
Personal Information 
    [Arguments]    ${Name}    ${Email}    ${Phone}    ${Address}
    Wait Until Element Is Visible    ${Input_Name}
    Input Text    ${Input_Name}    ${Name}
    Wait Until Element Is Visible    ${Input_Email}
    Input Text    ${Input_Email}    ${Email}
    Wait Until Element Is Visible    ${Input_Phone}
    Input Text    ${Input_Phone}    ${Phone}
    Wait Until Element Is Visible    ${Input_Address}
    Input Text    ${Input_Address}    ${Address}

Click Sex
    Scroll Element Into View    ${CB_Sex}
    Click Element    ${CB_Sex}

Click Day
    Scroll Element Into View    ${CB_Day}
    Click Element    ${CB_Day}

Click Country
    Scroll Element Into View    ${DW_country}
    Select From List By Index    ${DW_country}    3

Click Colors
    [Arguments]    ${cl_data}
#cl_data = ตัวแปร พอประกาศค่าก็เอา Cl_val มาใช้ อันนี้ในนกรณีที่ข้อมูลเยอะมาก ใช้อันนี้ดีที่สุด
    Scroll Element Into View    ${LS_colors}
    Select From List By Value    ${LS_colors}    ${cl_data}

Select Calendar
    Scroll Element Into View    ${Calendar}
    Input Text    ${Calendar}    20/5/2023

Web Table
    ${rown}    Get Element Count    ${Table_0001}
    ${columns}    Get Element Count    ${Table_0002} 
    Log To Console    ${rown}
    Log To Console    ${columns}

#Pagination Table

Search Web
    [Arguments]    ${searchtext}
    Input Text    ${TB_Search}    ${Searchtext}
    Click Element    ${ET_button}

New windown
    Click Button    ${BT_New}
    Sleep    3
    Close Window

JS Alerts
    Click Button    ${BT_Alerts}
    Sleep    2
    Handle Alert    Accept

JS Comfirm Alert
    Click Button    ${BT_ConfirmAlret}
    Sleep    2
    Handle Alert    Dismiss

JS Prompt
    Click Button    ${BT_Prompt}
    Sleep    2
    Input Text Into Alert    TestTest    Accept

Double Click
    Scroll Element Into View    ${SC_Click}
    Click Element    ${TB_field1}
    Clear Element Text    ${TB_field1}
    Input Text    ${TB_field1}    Chanikan
    Double Click Element    ${DC_Copytext}

TestDragandDrop
    Scroll Element Into View    ${Pic_001}
    Drag And Drop    ${Pic_001}    ${drop_001}

TestSlider
    Scroll Element Into View    ${Slider}    
    Drag And Drop By Offset    ${Slider}    50    10
 

TestFrome
    Scroll Element Into View    ${TX_SC}
    Select Frame    ${FS_Form}
    Click Element    ${Input_text}
    Input Text    ${Input_text}    Ping
    Click Element    ${F_Sex}
    Input Text    ${IP_HBD}    20/5/1994
    Select From List By Index    ${Job}    1
    Click Element    ${Submit}

Resizable
    Execute Javascript    window.scrollTo(0,1500)
    Get Element    ${Pic_T}
    Execute Javascript    action=mou
    
*** Variables ***
#Locator
${Input_Name}    id=name
${Input_Email}    id=email
${Input_Phone}    id=phone
${Input_Address}    id=textarea
${CB_Sex}    id=female
${CB_Day}    id=friday
${DW_country}    id=country
${LS_colors}    id=colors
#ค่าสำหรับประกาศ
&{cl_val}    val1=white    val2=red    val3=blue    val4=green    val5=yellow  
${Calendar}    id=datepicker
#
${Table_0001}    Xpath=//table[@name='bookTable']/tbody/tr
${Table_0002}    Xpat=//table[@name='bookTable']/tbody/tr/th
${TB_Search}    id=Wikipedia1_wikipedia-search-input
${ET_button}    Xpath=//*[@id="Wikipedia1_wikipedia-search-form"]/div/span[2]/span[2]/input
${BT_New}    Xpath=//*[@id="HTML4"]/div[1]/button
${BT_Alerts}    Xpath=//*[@id="HTML9"]/div[1]/button[1]
${BT_ConfirmAlret}    Xpath=//*[@id="HTML9"]/div[1]/button[2]
${BT_Prompt}    Xpath=//*[@id="HTML9"]/div[1]/button[3]
${SC_Click}    Xpath=//*[@id="HTML10"]/div[1]/p
${TB_field1}    id=field1
${DC_Copytext}    Xpath=//*[@id="HTML10"]/div[1]/button
${Pic_001}    id=draggable
${drop_001}    id=droppable
${Slider}    Xpath=//*[@id="slider"]/span
${TX_SC}    xpath=//*[@id="HTML3"]/h2
${FS_Form}    id=frame-one796456169
${Input_text}    id=RESULT_TextField-0
${F_Sex}    Xpath=//*[@id="q2"]/table/tbody/tr[2]/td/label
${IP_HBD}    id=RESULT_TextField-2
${Job}    id=RESULT_RadioButton-3
${Submit}    id=FSsubmit
${Sidebar}    id=sidebar-right-1
${Pic_T}    xpath=