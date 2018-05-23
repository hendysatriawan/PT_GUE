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
Coachmark Beranda Handle
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  100s
  Click Element    ${APP}:id/next_btn
  Wait Until Element Is Visible    ${APP}:id/next_btn   100s
  Click Element    ${APP}:id/next_btn
  Wait Until Element Is Visible    com.temanbumil.android:id/btn_checklist    100s
  Click Element    ${APP}:id/next_btn
  Wait Until Element Is Visible    com.temanbumil.android:id/title_tips     100s
  Click Element    xpath=//android.widget.Button[@text='GOT IT']

Coachmark Menu Handle
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  100s
  Click Element    ${APP}:id/next_btn
  Sleep    1s
  Click Element    ${APP}:id/next_btn
  Sleep    1s
  Click Element    xpath=//android.widget.Button[@text='GOT IT']

Coachmark Got It
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  100s
    Click Element    xpath=//android.widget.Button[@text='GOT IT']
