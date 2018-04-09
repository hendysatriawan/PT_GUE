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
${USERNAME}   hendy.satriawan@gmail.com
${PASSWORD}    123456
${PROFILE_NAME}   hendy satriawan
#data register
${FIRST_NAME}   ani
${LAST_NAME}    sutes
${EMAIL_USER}   anisutes1@yopmail.com
${PASSWORD_USER}    12345678
*** Test Cases ***
Register
    [Documentation]    Try to login using valid member
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_EMULATOR}    deviceName=${DEVICE_NAME_EMULATOR}    app=${APP}    appPackage=${APP_PACKAGE}   appActivity=${APP_ACTIVITY_SPLASH}
    Sleep    2s
    #permission handle
    Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message  2s
    Click Element    com.android.packageinstaller:id/permission_allow_button
    #skip splash screen
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
    Click Element    xpath=//android.widget.Button[@text='SKIP']
    #Wait Apps Open & Open Register Page
    Wait Until Element Is Visible    id=text
    Click Element    xpath=//android.widget.TextView[@text='REGISTER']
    Element Name Should Be    id=btn_Register    REGISTER
    #Input Name, Email, Password & Click Login
    Input Text    id=et_first_name    ${FIRST_NAME}
    Input Text    id=et_last_name    ${LAST_NAME}
    Input Text    id=et_email    ${EMAIL_USER}
    Input Password    id=pv_pwd    ${PASSWORD_USER}
    Hide Keyboard
    Swipe    658    1258    728    615
    Click Element    id=cb_tos
    Click Element    id=btn_Register
    #Wait Element untuk input kode OTP secara manual (ambil dari email)
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text='Verifikasi Email']  100s
    Sleep    30s
    Close Application
