*** Setting ***
Library    AppiumLibrary
Library    BuiltIn

*** Keywords ***
Permission_Phone
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

Force_Update
  #update click no
  ${pesan}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'android:id/button2')]
  Run Keyword If    ${pesan}    Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')]
  ...   ELSE IF   '${pesan}' == 'False'   Run Keywords    Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  ...   AND   Log    Force Update, Apps Harus dilakukan Update. jadi diclose saja
  ...   AND   Close Application
    # ${pesan}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/message')]
  # Run Keyword If    ${pesan}    Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')]

Recent Aplikasi
  Sleep    2s
  Press Keycode    3   #home
  Sleep    1s
  Press Keycode    187  #recent apps
  Sleep    1s
  Press Keycode    187  #recent apps
