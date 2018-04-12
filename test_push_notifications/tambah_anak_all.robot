*** Settings ***
#Suite Setup     Buka Apps
#Suite Teardown    Tutup Apps
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
${BabyW1}   BayiW1af
${BabyW2}   BayiW2af
${BabyW3}   BayiW3af
${BabyW4}   BayiW4af
${BabyW5}   BayiW5af
${BabyW6}   BayiW6af
${BabyW7}   BayiW7af
${BabyW8}   BayiW8af
${BabyW9}   BayiW9af
${BabyW10}  BayiW10af
${BabyW11}  BayiW11af
${BabyW12}  BayiW12af
${BabyW13}  BayiW13af
${BabyW14}  BayiW14af
${BabyW15}  BayiW15af
${BabyW16}  BayiW16af
${BabyW17}  BayiW17af
${BabyW18}  BayiW18af
${BabyW19}  BayiW19af
${BabyW20}  BayiW20af
${BabyW21}  BayiW21af
${BabyW22}  BayiW22af
${BabyW23}  BayiW23af
${BabyW24}  BayiW24af
${BabyW25}  BayiW25af
${BabyW26}  BayiW26af
${BabyW27}  BayiW27af
${BabyW28}  BayiW28af
${BabyW29}  BayiW29af
${BabyW30}  BayiW30af
${BabyW31}  BayiW31af
${BabyW32}  BayiW32af
${BabyW33}  BayiW33af
${BabyW34}  BayiW34af
${BabyW35}  BayiW35af
${BabyW36}  BayiW36af
${BabyW37}  BayiW37af
${BabyW38}  BayiW38af
${BabyW39}  BayiW39af
${BabyW40}  BayiW40af
${BabyW41}  BayiW41af
${BabyW42}  BayiW42af
#waktu
${time_sec}   60s
${time_min}   1s
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
Masuk ke profile
  Log    masuk ke halaman profile
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Click Element    id=tv_nav_profile
Ubah jadi sudah lahir
  Log    Ubah fetus menjadi sudah melahirkan
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100slocator
  Sleep    1s
  Click Element    id=tv_baby_name
  Wait Until Element Is Visible    ${APP}:id/sudahLahir   100s

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
Tambah anak Week 1
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
    Swipe    547    440    547    98
    Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
    #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
    Click Element    id=btn_add_child
    #input nama Anak
    Wait Until Element Is Visible    id=et_child_name   ${time_sec}
    Input Text    id=et_child_name    ${BabyW1}
    #input tanggal langsung dengan long press
    Wait Until Element Is Visible    android:id/pickers   ${time_sec}
    #input tahun
    Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
    Sleep    1s
    Press Keycode    ${2}
    Press Keycode    ${0}
    Press Keycode    ${1}
    Press Keycode    ${8}
    Klik Enter
    #input bulan
    Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
    Sleep    1s
    Press Keycode    ${A}
    Press Keycode    ${P}
    Press Keycode    ${R}
    Klik Enter
    #input tanggal
    Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
    Sleep    1s
    Press Keycode    ${0}
    Press Keycode    ${4}
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
    Sleep    ${time_min}
Tambah anak Week 2
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Wait Until Element Is Visible    id=tv_nav_child    ${time_sec}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW2}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${M}
  Press Keycode    ${A}
  Press Keycode    ${R}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${8}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 3
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW3}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${M}
  Press Keycode    ${A}
  Press Keycode    ${R}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${1}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 4
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW4}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${M}
  Press Keycode    ${A}
  Press Keycode    ${R}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${4}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 5
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW5}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${M}
  Press Keycode    ${A}
  Press Keycode    ${R}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${7}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 6
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW6}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${F}
  Press Keycode    ${E}
  Press Keycode    ${B}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${8}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 7
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW7}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${F}
  Press Keycode    ${E}
  Press Keycode    ${B}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${1}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 8
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW8}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${F}
  Press Keycode    ${E}
  Press Keycode    ${B}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${4}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 9
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW9}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${F}
  Press Keycode    ${E}
  Press Keycode    ${B}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${7}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 10
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW10}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${J}
  Press Keycode    ${A}
  Press Keycode    ${N}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${3}
  Press Keycode    ${1}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 11
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW11}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${J}
  Press Keycode    ${A}
  Press Keycode    ${N}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${4}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 12
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW12}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${J}
  Press Keycode    ${A}
  Press Keycode    ${N}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 13
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW13}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${J}
  Press Keycode    ${A}
  Press Keycode    ${N}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${0}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 14
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW14}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${F}
  Press Keycode    ${E}
  Press Keycode    ${B}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${3}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 15
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW15}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${D}
  Press Keycode    ${E}
  Press Keycode    ${S}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${7}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 16
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW16}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${D}
  Press Keycode    ${E}
  Press Keycode    ${S}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 17
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW17}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${D}
  Press Keycode    ${E}
  Press Keycode    ${S}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${3}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 18
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW18}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${D}
  Press Keycode    ${E}
  Press Keycode    ${S}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${6}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 19
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW19}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${N}
  Press Keycode    ${O}
  Press Keycode    ${V}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${9}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 20
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW20}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${N}
  Press Keycode    ${O}
  Press Keycode    ${V}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${2}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 21
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW21}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${N}
  Press Keycode    ${O}
  Press Keycode    ${V}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${5}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 22
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW22}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${N}
  Press Keycode    ${O}
  Press Keycode    ${V}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${8}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 23
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW23}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${N}
  Press Keycode    ${O}
  Press Keycode    ${V}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${1}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 24
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW24}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${O}
  Press Keycode    ${K}
  Press Keycode    ${T}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${5}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 25
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW25}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${O}
  Press Keycode    ${K}
  Press Keycode    ${T}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${8}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 26
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW26}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${O}
  Press Keycode    ${K}
  Press Keycode    ${T}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${1}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 27
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW27}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${O}
  Press Keycode    ${K}
  Press Keycode    ${T}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${4}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 28
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW28}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${S}
  Press Keycode    ${E}
  Press Keycode    ${P}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${7}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 29
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW29}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${S}
  Press Keycode    ${E}
  Press Keycode    ${P}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 30
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW30}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${O}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${S}
  Press Keycode    ${E}
  Press Keycode    ${P}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${3}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 31
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW31}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${S}
  Press Keycode    ${E}
  Press Keycode    ${P}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${6}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 32
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW32}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${A}
  Press Keycode    ${G}
  Press Keycode    ${T}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${3}
  Press Keycode    ${0}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 33
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW33}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${A}
  Press Keycode    ${G}
  Press Keycode    ${T}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${3}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 34
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW34}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${A}
  Press Keycode    ${G}
  Press Keycode    ${T}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${6}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 35
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW35}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${A}
  Press Keycode    ${G}
  Press Keycode    ${T}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${9}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 36
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW36}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${A}
  Press Keycode    ${G}
  Press Keycode    ${T}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${2}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 37
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW37}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${J}
  Press Keycode    ${U}
  Press Keycode    ${L}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${6}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 38
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW38}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${J}
  Press Keycode    ${U}
  Press Keycode    ${L}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${9}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 39
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW39}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${J}
  Press Keycode    ${U}
  Press Keycode    ${L}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${1}
  Press Keycode    ${2}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 40
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW40}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${J}
  Press Keycode    ${U}
  Press Keycode    ${L}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${0}
  Press Keycode    ${5}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 41
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW41}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${J}
  Press Keycode    ${U}
  Press Keycode    ${N}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${8}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Sleep    ${time_min}
Tambah anak Week 42
  [Documentation]    Tambahkan anak untuk mendapatkan push notif
  #Buka menu
  Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
  Click Element    id=btn_navigation
  #coachmark handle      #hanya digunakan diawal saja
  #pilih tambah Anak
  Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
  Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
  Click Element    id=tv_nav_child
  Sleep    1s
  Swipe    547    440    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  #Element Name Should Be    id=btn_add_child    Tambah Anak      #didisable bila menggunakan emulator
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW42}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${7}
  Klik Enter
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${J}
  Press Keycode    ${U}
  Press Keycode    ${N}
  Klik Enter
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${2}
  Press Keycode    ${1}
  Klik Enter
  Sleep    2s
  # pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
  Sleep    2s
  Wait Until Element Is Visible    id=btn_save    ${time_sec}
  Click Element    id=btn_save
  # #swipe & tunggu Notifications
  # Swipe Notifications
  # Sleep    ${time_min}
  # #capture notifikasi yang muncul
  # Capture Page Screenshot   filename=${BabyW1}.png
  # Klik Back
  #coachmark handle      #hanya digunakan 1x diawal saja
  Wait Until Element Is Visible    id=btn_save    1h
  Wait Until Element Is Visible    id=btn_save    1h
  Set Appium Timeout    5000
