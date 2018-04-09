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
${USERNAME}   ben1@yopmail.com
${PASSWORD}    12345678
${PROFILE_NAME}   Aquila Majid
#data register
${FIRST_NAME}   ani
${LAST_NAME}    sutes
${EMAIL_USER}   anisutes1@yopmail.com
${PASSWORD_USER}    12345678
#daftar Keycode
#Nomor
${0}    7
${1}    8
${2}    9
${3}    10
${4}    11
${5}    12
${6}    13
${7}    14
${8}    15
${9}    16
${back}   4
${enter}    66
#huruf
${A}    29
${B}    30
${C}    31
${D}    32
${E}    33
${F}    34
${G}    35
${H}    36
${I}    37
${J}    38
${K}    39
${L}    40
${M}    41
${N}    42
${O}    43
${P}    44
${Q}    45
${R}    46
${S}    47
${T}    48
${U}    49
${V}    50
${W}    51
${X}    52
${Y}    53
${Z}    54
#nama Anak
${BabyW4}   BayiW4az

#waktu
${time_sec}   60s
${time_min}   8m
*** Keyword ***
Buka Aplikasi
  Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_EMULATOR}    deviceName=${DEVICE_NAME_EMULATOR}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}

Klik Enter
  Press Keycode    66
Swipe Notifications
  Click Element At Coordinates    500    10
  Swipe    500    10    500    1000
  Click Element At Coordinates    500    10
  Sleep    1s
Klik Back
  Press Keycode    4
coachmark handle
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  ${time_sec}
  Click Element    xpath=//android.widget.Button[@text='GOT IT']
*** Test Cases ***
Login_valid
    [Documentation]    Try to login using valid member
    Buka Aplikasi
    Sleep    2s
    #permission handle
    Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message  ${time_sec}
    Click Element    com.android.packageinstaller:id/permission_allow_button
    #skip splash screen
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  ${time_sec}
    Click Element    xpath=//android.widget.Button[@text='SKIP']
    #login
    Input Text    id=et_email    ${USERNAME}
    Input Password    id=et_password    ${PASSWORD}
    Click Element    id=btn_login
    #coachmark handle
    Wait Until Element Is Visible    id=tv_title  ${time_sec}
    Element Name Should Be    id=tv_title    Teman Bumil
    # # -- dienable kalau sudah ada anak
    # Wait Until Element Is Visible    id=tv_title  100s
    # Element Name Should Be    id=tv_title    Teman Bumil
    # # -- coachmark handle
    # Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
    # Click Element    xpath=//android.widget.Button[@text='GOT IT']

Tambah anak Week 4
    [Documentation]    Tambahkan anak untuk mendapatkan push notif
    #Buka menu
    Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
    Click Element    id=btn_navigation
    coachmark handle      #hanya digunakan diawal saja
    #pilih tambah Anak
    Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
    Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
    Click Element    id=tv_nav_child
    Sleep    1s
    Swipe    547    490    547    98
    Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
    Element Name Should Be    id=btn_add_child    Tambah Anak
    Click Element    id=btn_add_child
    #input nama Anak
    Wait Until Element Is Visible    id=et_child_name   ${time_sec}
    Input Text    id=et_child_name    ${BabyW4}
    #input tanggal langsung dengan long press
    Wait Until Element Is Visible    android:id/pickers   ${time_sec}
    Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
    Sleep    1s
    #Tanggal
    Press Keycode    ${1}
    Press Keycode    ${2}
    Klik Enter
    Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
    Sleep    1s
    #Bulan
    Press Keycode    ${M}
    Press Keycode    ${A}
    Press Keycode    ${R}
    Klik Enter
    Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
    Sleep    1s
    #Tahun
    Press Keycode    ${2}
    Press Keycode    ${0}
    Press Keycode    ${1}
    Press Keycode    ${8}
    Klik Enter
    Sleep    2s
    # pilih jenis kelamin
    Click Element    ${APP}:id/sp_gender
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
    Sleep    2s
    Click Element    id=btn_save
    # #swipe & tunggu Notifications
    # Swipe Notifications
    # Sleep    ${time_min}
    # #capture notifikasi yang muncul
    # Capture Page Screenshot   filename=${BabyW1}.png
    # Klik Back
    coachmark handle      #hanya digunakan 1x diawal saja
    Close Application
