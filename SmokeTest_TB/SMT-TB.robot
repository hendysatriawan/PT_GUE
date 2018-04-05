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
# Register
#     [Documentation]    Try to login using valid member
#     Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_EMULATOR}    deviceName=${DEVICE_NAME_EMULATOR}    app=${APP}    appPackage=${APP_PACKAGE}   appActivity=${APP_ACTIVITY_SPLASH}
#     Sleep    2s
#     #permission handle
#     Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message  2s
#     Click Element    com.android.packageinstaller:id/permission_allow_button
#     #skip splash screen
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
#     Click Element    xpath=//android.widget.Button[@text='SKIP']
#     #Wait Apps Open & Open Register Page
#     Wait Until Element Is Visible    id=text
#     Click Element    xpath=//android.widget.TextView[@text='REGISTER']
#     Element Name Should Be    id=btn_Register    REGISTER
#     #Input Name, Email, Password & Click Login
#     Input Text    id=et_first_name    ${FIRST_NAME}
#     Input Text    id=et_last_name    ${LAST_NAME}
#     Input Text    id=et_email    ${EMAIL_USER}
#     Input Password    id=pv_pwd    ${PASSWORD_USER}
#     Hide Keyboard
#     Swipe    658    1258    728    615
#     Click Element    id=cb_tos
#     Click Element    id=btn_Register
#     #Wait Element untuk input kode OTP secara manual (ambil dari email)
#     Wait Until Element Is Visible    xpath=//android.widget.TextView[@text='Verifikasi Email']  100s
#     Sleep    30s
#     Close Application

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
    # #-- dienable kalau sudah ada anak
    # Wait Until Element Is Visible    id=tv_title  100s
    # Element Name Should Be    id=tv_title    Teman Bumil
    # Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
    # Click Element    xpath=//android.widget.Button[@text='GOT IT']


Pilih Program Hamil
    Log    Pilih program hamil untuk new member (belum input anak/kehamilan)
    Wait Until Element Is Visible    com.temanbumil.android:id/imageView  100s
    Click Element    com.temanbumil.android:id/btn_negative
    #pilih fitur yang mums inginkan -- pilih program hamil
    Element Text Should Be    com.temanbumil.android:id/tv_q_main    Silakan pilih fitur yang Mums inginkan
    Click Element    xpath=//android.widget.Button[@text='PROGRAM HAMIL']
    #question program hamil -- pilih tidak
    Element Text Should Be    com.temanbumil.android:id/tvDescription    Apakah Mums yakin ingin menggunakan fitur Program Hamil?
    Click Element    com.temanbumil.android:id/txt_negative
    Element Text Should Be    com.temanbumil.android:id/tv_q_main    Silakan pilih fitur yang Mums inginkan
    #question program hamil -- pilih ya
    Click Element    xpath=//android.widget.Button[@text='PROGRAM HAMIL']
    Element Text Should Be    com.temanbumil.android:id/tvDescription    Apakah Mums yakin ingin menggunakan fitur Program Hamil?
    Click Element    com.temanbumil.android:id/txt_positive
    #coachmark(tutorial) handle
    Wait Until Element Is Visible    id=tv_title  10s
    Element Name Should Be    id=tv_title    Teman Bumil
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
    Click Element    xpath=//android.widget.Button[@text='GOT IT']

Pilih Artikel
    Log    Pilih artikel 1 & tap untuk masuk ke page Artikel
    Click Element At Coordinates    538    484
    #back ke halaman program hamil
    Click Element At Coordinates    70    155

# Hapus Data anak
#     Log    Data anak harus ada
#     Wait Until Element Is Visible    id=btn_navigation  10s
#     Click Element    id=btn_navigation
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
#     Click Element    xpath=//android.widget.Button[@text='GOT IT']
#     Wait Until Element Is Visible    id=tv_nav_profile  10s
#     Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
#     Click Element    id=tv_nav_profile
#     Wait Until Element Is Visible    xpath=//android.widget.TextView[@text='Profil']  10s
#     Wait Until Element Is Visible    com.temanbumil.android:id/tv_baby_name
#     # Hapus Data
#     Wait Until Element Is Visible    com.temanbumil.android:id/tv_baby_name   10s
#     Click Element    id=tv_baby_name
#     Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v7.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.RelativeLayout[3]/android.widget.TextView
    # #Loop Hapus Data
    # :For  ${COUNT}  IN RANGE  0 42
    # \   ${CEK}  Wait Until Element Is Visible    com.temanbumil.android:id/tv_baby_name
    # \   Click Element    id=tv_baby_name
    # \   Click Element    xpath=//android.widget.TextView[@text='Delete']
    # \   Exit For Loop If    '${CEK}'=='False'
