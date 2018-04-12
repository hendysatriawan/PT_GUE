*** Settings ***
Library           AppiumLibrary
Library           BuiltIn

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION_EMULATOR}    6.0
${PLATFORM_VERSION_REAL}   7.1.1
${DEVICE_NAME_EMULATOR}    192.168.56.101:5555
${DEVICE_NAME_REAL}    49ffe4aa
${APP}            com.temanbumil.android
${APP_PACKAGE}    com.temanbumil.android
${APP_ACTIVITY}    com.temanbumil.android.authentication.AuthenticationActivity
${APP_ACTIVITY_SPLASH}  com.temanbumil.android.splash.SplashActivity
${APP_ACTIVITY_HOME}  com.temanbumil.android.home.HomeActivity
#data login
${USERNAME}   ben3@yopmail.com
${PASSWORD}    12345678
${PROFILE_NAME}   Ben ben

*** Keywords ***
Delete Baby
  Click Element                   id=tv_baby_name
  Wait Until Element Is Visible   ${APP}:id/delete
  Click Element                   ${APP}:id/delete
Hapus data
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Sleep    1s
  Click Element    id=tv_baby_name
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
*** Test Cases ***
#login first
#harus sudah memiliki anak yang akan dihapus
#harus sudah masuk ke home page
Login_valid
    [Documentation]    Try to login using valid member
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_EMULATOR}    deviceName=${DEVICE_NAME_EMULATOR}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY_SPLASH}
    Sleep    2s
    #permission handle
    Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message  2s
    Click Element    com.android.packageinstaller:id/permission_allow_button
    #skip splash screen
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
    Click Element    xpath=//android.widget.Button[@text='SKIP']
    #login
    Input Text    id=et_email    ${USERNAME}
    Input Password    id=et_password    ${PASSWORD}
    Click Element    id=btn_login
    # # -- dienable kalau sudah ada anak
    # Wait Until Element Is Visible    id=tv_title  100s
    # Element Name Should Be    id=tv_title    Teman Bumil
    # # -- coachmark handle
    # Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
    # Click Element    xpath=//android.widget.Button[@text='GOT IT']

Hapus Data anak
    Log    Data anak harus ada
    Wait Until Element Is Visible    id=btn_navigation  100s
    Click Element    id=btn_navigation
    #coachmark handle
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
    Click Element    xpath=//android.widget.Button[@text='GOT IT']
    Wait Until Element Is Visible    id=tv_nav_profile  100s
    #Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
    Click Element    id=tv_nav_profile
    Wait Until Element Is Visible    ${APP}:id/tv_title   100s
    # Hapus Data (1 data)
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    Hapus data
    # #Loop Hapus Data (untuk menghapus seluruh data berulang-ulang)
    # :For  ${COUNT}  IN RANGE  0 42
    # \   ${CEK}  Wait Until Element Is Visible    ${APP}:id/tv_baby_name
    # \   Click Element    id=tv_baby_name
    # \   Click Element    xpath=//android.widget.TextView[@text='Delete']
    # \   Exit For Loop If    '${CEK}'=='False'
    # :For  ${COUNT}  IN RANGE  0 42
    # \   ${CEK}  Run Keyword And Return Status    Until Element Is Visible    id=tv_baby_name
    # \   Log To Console      ${CEK}
    # \   Run Keyword If      '${CEK}'=='True'        Delete Baby
    # \   Exit For Loop If    '${CEK}'=='True'
