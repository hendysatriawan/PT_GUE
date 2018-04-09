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
*** Test Cases ***
#Login first & for new member
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
