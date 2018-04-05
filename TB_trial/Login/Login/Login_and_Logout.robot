*** Settings ***
Library           AppiumLibrary

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
${PROFILE_NAME}   Aquila Majid
*** Test Cases ***
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
    Input Text    id=et_email    ben1@yopmail.com
    Input Password    id=et_password    12345678
    Click Element    id=btn_login
    Wait Until Element Is Visible    id=tv_title  100s
    Element Name Should Be    id=tv_title    Teman Bumil
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
    Click Element    xpath=//android.widget.Button[@text='GOT IT']

Hapus Data anak
    Wait Until Element Is Visible    id=btn_navigation  10s
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile  10s
    Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
    Click Element    id=tv_nav_profile
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text='Profile']
# Tambah_Anak
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
#     Click Element    xpath=//android.widget.Button[@text='GOT IT']
#     Wait Until Element Is Visible    id=btn_navigation  10s
#     Click Element    id=btn_navigation
#     Wait Until Element Is Visible    com.temanbumil.android:id/got_btn  10s
#     Click Element    com.temanbumil.android:id/got_btn
#     Wait Until Element Is Visible    id=tv_nav_profile  10s
#     Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
#     Click Element    id=tv_nav_child
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@text='Tambah Anak'] 100s
#     Scroll  xpath=//android.widget.TextView[@text='BabyW8s']   xpath=//android.widget.Button[@text='Tambah Anak']
#     Wait Element Is Visible    id=btn_add_child 10s
#     Element Name Should Be    id=btn_add_child    Tambah Anak
#     Click Element    id=btn_add_child
#     Wait Element Is Visible    id=tv_title  10s
#     Element Name Should Be    id=tv_title    Tambah Anak

# Logout_Apps
#     [Documentation]    Try To Logout Account
#     Click Element    id=btn_navigation
#     Wait Until Element Is Visible    id=tv_nav_logout
#     Element Name Should Be    id=tv_nav_logout    Log out
#     Click Element    id=tv_nav_logout
#     Wait Until Element Is Visible    id=message
#     Element Name Should Be    id=message    Mums yakin akan logout?
#     Click Element    id=button1
#     Wait Until Element Is Visible    id=title_login
#     Element Name Should Be    id=title_login    Welcome!
