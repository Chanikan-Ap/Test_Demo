*** Settings ***
Resource    ../Resource/Commonkeywords/Common_Keyword.resource
Resource    ../Resource/CommonVariable/commonvariable.resource

Suite Setup    Open Browser    ${URL}    Chrome
Test Setup    Maximize Browser Window

*** Test Cases ***
Input Text
    Personal Information    Chanikan    Chanikan@hotmail.com    0906481659    Thailand

Click Sex
    Click Sex
Click Day
    Click Day

Click Country
    Click Country

Click Colors
    Click Colors    ${cl_val.val2}

Click calender
    Select Calendar

Web Table
    Web Table
    
Search Web
    Search Web    Google

New Winwindown
    New windown

Alert
    JS Alerts
    JS Comfirm Alert
    JS Prompt
    Double Click

TestDrop
    TestDragandDrop

Test Slider
    TestSlider

TestFrome
    TestFrome

Resizable
    Resizable
    Sleep    3












