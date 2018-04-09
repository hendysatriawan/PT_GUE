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
#Login first
#untuk new member sudah memilih program hamil saat baru login
#script ini dipakai setelah masuk ke halaman program hamil
Pilih Artikel
    Log    Pilih artikel 1 & tap untuk masuk ke page Artikel
    Click Element At Coordinates    538    484
    #back ke halaman program hamil
    Click Element At Coordinates    70    155
