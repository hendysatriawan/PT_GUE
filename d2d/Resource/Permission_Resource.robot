*** Setting ***
Library    AppiumLibrary
Library    BuiltIn

*** Keywords ***
Permission_Phone
  ${Permission_Phone}    Run Keyword And Return Status    Wait Until Element Is Visible     //android.widget.Button[contains(@resource-id,'com.android.packageinstaller:id/permission_allow_button')]
  Run Keyword If    ${Permission_Phone}    Click Element    //android.widget.Button[contains(@resource-id,'com.android.packageinstaller:id/permission_allow_button')]      #klik allow permission Yes
  ...   ELSE   Log    Permission sudah di setujui

Permission_Storage
  ${Permission_Phone}    Run Keyword And Return Status    Wait Until Element Is Visible     //android.widget.Button[contains(@resource-id,'com.android.packageinstaller:id/permission_allow_button')]
  Run Keyword If    ${Permission_Phone}    Click Element    //android.widget.Button[contains(@resource-id,'com.android.packageinstaller:id/permission_allow_button')]      #klik allow permission Yes
  ...   ELSE   Log    Permission sudah di setujui

Permission_Calendar
  ${Permission_Calendar}    Run Keyword And Return Status    Wait Until Element Is Visible     com.android.packageinstaller:id/permission_message
  Run Keyword If    ${Permission_Calendar}    Click Element    com.android.packageinstaller:id/permission_allow_button      #klik allow permission Yes
  ...   ELSE   Log    Permission sudah di setujui

Permission_Confirm
  ${Permission_Confirm}    Run Keyword And Return Status    Wait Until Element Is Visible     android:id/message
  Run Keyword If    ${Permission_Confirm}    Click Element    android:id/button2      #klik allow permission Yes
  ...   ELSE   Log    Permission sudah di setujui

Permission_Camera
  ${Permission_Camera}    Run Keyword And Return Status    Wait Until Element Is Visible     com.android.packageinstaller:id/permission_message
  Run Keyword If    ${Permission_Camera}    Click Element    com.android.packageinstaller:id/permission_allow_button      #klik allow permission Yes
  ...   ELSE   Log    Permission sudah di setujui

Permission_Gallery
  ${Permission_Gallery}    Run Keyword And Return Status    Wait Until Element Is Visible     com.android.packageinstaller:id/permission_message
  Run Keyword If    ${Permission_Gallery}    Click Element    com.android.packageinstaller:id/permission_allow_button      #klik allow permission Yes
  ...   ELSE   Log    Permission sudah di setujui

Permission_Location
  ${Permission_Location}    Run Keyword And Return Status    Wait Until Element Is Visible     com.android.packageinstaller:id/permission_message
  Run Keyword If    ${Permission_Location}    Click Element    com.android.packageinstaller:id/permission_allow_button      #klik allow permission Yes
  ...   ELSE   Log    Permission sudah di setujui

Force Update
  ${Update}    Run Keyword And Return Status    Wait Until Element Is Visible     //android.widget.TextView[contains(@text,'Update D2D application ?')]    20s
  Run Keyword If    ${Update}    Click Element    //android.widget.TextView[contains(@text,'Later')]      #klik later bila ada update
  ...   ELSE   Log    Tidak ada Update
