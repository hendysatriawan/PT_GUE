*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
*** Variables ***
#Data valid
${NAMA_DEPAN}   yuni
${NAMA_BELAKANG}    sinta
${EMAIL_VALID}    yun@yopmail.com
${EMAIL_VALID_2}    yun2@yopmail.com
${PASS_VALID}   12345678
#Data Invalid
${EMAIL_INVALID_1}    yun@yopmail
${EMAIL_INVALID_2}    yunyopmail.com
${EMAIL_ALREADY}      ben1@yopmail.com
${PASS_INVALID}   12345
#data facebook
${USERNAME_FB}  hendy_satriawan@rocketmail.com
${PASSWORD_FB}  123456

*** Keywords ***
Coachmark Beranda fertil Handle
  #coachmark notifikasi
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Notifikasi')]  100s
  Element Should Contain Text    //android.widget.TextView[contains(@text,'Notifikasi')]    Notifikasi
  Element Should Be Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]
  Element Should Be Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/next_btn')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/next_btn')]
  #coachmark fetus image
  Wait Until Element Is Visible    //android.widget.android.widget.ImageView(@text,'Notifikasi')]  100s
  Element Should Contain Text    //android.widget.TextView[contains(@text,'Notifikasi')]    Notifikasi
  Element Should Be Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]
  Element Should Be Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/next_btn')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/next_btn')]
  #coachmark
  Wait Until Element Is Visible    com.temanbumil.android:id/btn_checklist    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/next_btn')]
  Wait Until Element Is Visible    com.temanbumil.android:id/title_tips     100s
  Click Element    xpath=//android.widget.Button[@text='GOT IT']

Coachmark Menu Handle
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/next_btn')]
  Sleep    1s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/next_btn')]
  Sleep    1s
  Click Element    xpath=//android.widget.Button[@text='GOT IT']

Coachmark Got It
    ${cekmark}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']   8s
    Run Keyword If    ${cekmark}    Click Element    xpath=//android.widget.Button[@text='GOT IT']
    ...   ELSE    Log    Tidak ada Coachmark
