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
#HPHT Week 1=========================
#input tanggal (input dengan keycode)
${TGL_1_W1}  8
${TGL_2_W1}  7
#Input bulan (input dengan keycode)
${BLN_1_W1}  43
${BLN_2_W1}  39
${BLN_3_W1}  48
#input tahun (input dengan keycode)
${THN_1_W1}  9
${THN_2_W1}  7
${THN_3_W1}  8
${THN_4_W1}  14
#HPHT Week 2=========================
#input tanggal (input dengan keycode)
${TGL_1_W2}  8
${TGL_2_W2}  7
#Input bulan (input dengan keycode)
${BLN_1_W2}  43
${BLN_2_W2}  39
${BLN_3_W2}  48
#input tahun (input dengan keycode)
${THN_1_W2}  9
${THN_2_W2}  7
${THN_3_W2}  8
${THN_4_W2}  14
#HPHT Week 3=========================
#input tanggal (input dengan keycode)
${TGL_1_W3}  8
${TGL_2_W3}  7
#Input bulan (input dengan keycode)
${BLN_1_W3}  43
${BLN_2_W3}  39
${BLN_3_W3}  48
#input tahun (input dengan keycode)
${THN_1_W3}  9
${THN_2_W3}  7
${THN_3_W3}  8
${THN_4_W3}  14
#HPHT Week 4=========================
#input tanggal (input dengan keycode)
${TGL_1_W4}  8
${TGL_2_W4}  7
#Input bulan (input dengan keycode)
${BLN_1_W4}  43
${BLN_2_W4}  39
${BLN_3_W4}  48
#input tahun (input dengan keycode)
${THN_1_W4}  9
${THN_2_W4}  7
${THN_3_W4}  8
${THN_4_W4}  14
#HPHT Week 5=========================
#input tanggal (input dengan keycode)
${TGL_1_W5}  8
${TGL_2_W5}  7
#Input bulan (input dengan keycode)
${BLN_1_W5}  43
${BLN_2_W5}  39
${BLN_3_W5}  48
#input tahun (input dengan keycode)
${THN_1_W5}  9
${THN_2_W5}  7
${THN_3_W5}  8
${THN_4_W5}  14
#HPHT Week 6=========================
#input tanggal (input dengan keycode)
${TGL_1_W6}  8
${TGL_2_W6}  7
#Input bulan (input dengan keycode)
${BLN_1_W6}  43
${BLN_2_W6}  39
${BLN_3_W6}  48
#input tahun (input dengan keycode)
${THN_1_W6}  9
${THN_2_W6}  7
${THN_3_W6}  8
${THN_4_W6}  14
#HPHT Week 7=========================
#input tanggal (input dengan keycode)
${TGL_1_W7}  8
${TGL_2_W7}  7
#Input bulan (input dengan keycode)
${BLN_1_W7}  43
${BLN_2_W7}  39
${BLN_3_W7}  48
#input tahun (input dengan keycode)
${THN_1_W7}  9
${THN_2_W7}  7
${THN_3_W7}  8
${THN_4_W7}  14
#HPHT Week 8=========================
#input tanggal (input dengan keycode)
${TGL_1_W8}  8
${TGL_2_W8}  7
#Input bulan (input dengan keycode)
${BLN_1_W8}  43
${BLN_2_W8}  39
${BLN_3_W8}  48
#input tahun (input dengan keycode)
${THN_1_W8}  9
${THN_2_W8}  7
${THN_3_W8}  8
${THN_4_W8}  14
#HPHT Week 9=========================
#input tanggal (input dengan keycode)
${TGL_1_W9}  8
${TGL_2_W9}  7
#Input bulan (input dengan keycode)
${BLN_1_W9}  43
${BLN_2_W9}  39
${BLN_3_W9}  48
#input tahun (input dengan keycode)
${THN_1_W9}  9
${THN_2_W9}  7
${THN_3_W9}  8
${THN_4_W9}  14
#HPHT Week 10========================
#input tanggal (input dengan keycode)
${TGL_1_W10}  8
${TGL_2_W10}  7
#Input bulan (input dengan keycode)
${BLN_1_W10}  43
${BLN_2_W10}  39
${BLN_3_W10}  48
#input tahun (input dengan keycode)
${THN_1_W10}  9
${THN_2_W10}  7
${THN_3_W10}  8
${THN_4_W10}  14
#HPHT Week 11========================
#input tanggal (input dengan keycode)
${TGL_1_W11}  8
${TGL_2_W11}  7
#Input bulan (input dengan keycode)
${BLN_1_W11}  43
${BLN_2_W11}  39
${BLN_3_W11}  48
#input tahun (input dengan keycode)
${THN_1_W11}  9
${THN_2_W11}  7
${THN_3_W11}  8
${THN_4_W11}  14
#HPHT Week 12=======================
#input tanggal (input dengan keycode)
${TGL_1_W12}  8
${TGL_2_W12}  7
#Input bulan (input dengan keycode)
${BLN_1_W12}  43
${BLN_2_W12}  39
${BLN_3_W12}  48
#input tahun (input dengan keycode)
${THN_1_W12}  9
${THN_2_W12}  7
${THN_3_W12}  8
${THN_4_W12}  14
#HPHT Week 13========================
#input tanggal (input dengan keycode)
${TGL_1_W13}  8
${TGL_2_W13}  7
#Input bulan (input dengan keycode)
${BLN_1_W13}  43
${BLN_2_W13}  39
${BLN_3_W13}  48
#input tahun (input dengan keycode)
${THN_1_W13}  9
${THN_2_W13}  7
${THN_3_W13}  8
${THN_4_W13}  14
#HPHT Week 14========================
#input tanggal (input dengan keycode)
${TGL_1_W14}  8
${TGL_2_W14}  7
#Input bulan (input dengan keycode)
${BLN_1_W14}  43
${BLN_2_W14}  39
${BLN_3_W14}  48
#input tahun (input dengan keycode)
${THN_1_W14}  9
${THN_2_W14}  7
${THN_3_W14}  8
${THN_4_W14}  14
#HPHT Week 15========================
#input tanggal (input dengan keycode)
${TGL_1_W15}  8
${TGL_2_W15}  7
#Input bulan (input dengan keycode)
${BLN_1_W15}  43
${BLN_2_W15}  39
${BLN_3_W15}  48
#input tahun (input dengan keycode)
${THN_1_W15}  9
${THN_2_W15}  7
${THN_3_W15}  8
${THN_4_W15}  14
#HPHT Week 16========================
#input tanggal (input dengan keycode)
${TGL_1_W16}  8
${TGL_2_W16}  7
#Input bulan (input dengan keycode)
${BLN_1_W16}  43
${BLN_2_W16}  39
${BLN_3_W16}  48
#input tahun (input dengan keycode)
${THN_1_W16}  9
${THN_2_W16}  7
${THN_3_W16}  8
${THN_4_W16}  14
#HPHT Week 17========================
#input tanggal (input dengan keycode)
${TGL_1_W17}  8
${TGL_2_W17}  7
#Input bulan (input dengan keycode)
${BLN_1_W17}  43
${BLN_2_W17}  39
${BLN_3_W17}  48
#input tahun (input dengan keycode)
${THN_1_W17}  9
${THN_2_W17}  7
${THN_3_W17}  8
${THN_4_W17}  14
#HPHT Week 18========================
#input tanggal (input dengan keycode)
${TGL_1_W18}  8
${TGL_2_W18}  7
#Input bulan (input dengan keycode)
${BLN_1_W18}  43
${BLN_2_W18}  39
${BLN_3_W18}  48
#input tahun (input dengan keycode)
${THN_1_W18}  9
${THN_2_W18}  7
${THN_3_W18}  8
${THN_4_W18}  14
#HPHT Week 19========================
#input tanggal (input dengan keycode)
${TGL_1_W19}  8
${TGL_2_W19}  7
#Input bulan (input dengan keycode)
${BLN_1_W19}  43
${BLN_2_W19}  39
${BLN_3_W19}  48
#input tahun (input dengan keycode)
${THN_1_W19}  9
${THN_2_W19}  7
${THN_3_W19}  8
${THN_4_W19}  14
#HPHT Week 20========================
#input tanggal (input dengan keycode)
${TGL_1_W20}  8
${TGL_2_W20}  7
#Input bulan (input dengan keycode)
${BLN_1_W20}  43
${BLN_2_W20}  39
${BLN_3_W20}  48
#input tahun (input dengan keycode)
${THN_1_W20}  9
${THN_2_W20}  7
${THN_3_W20}  8
${THN_4_W20}  14
#HPHT Week 21========================
#input tanggal (input dengan keycode)
${TGL_1_W21}  8
${TGL_2_W21}  7
#Input bulan (input dengan keycode)
${BLN_1_W21}  43
${BLN_2_W21}  39
${BLN_3_W21}  48
#input tahun (input dengan keycode)
${THN_1_W21}  9
${THN_2_W21}  7
${THN_3_W21}  8
${THN_4_W21}  14
#HPHT Week 22========================
#input tanggal (input dengan keycode)
${TGL_1_W22}  8
${TGL_2_W22}  7
#Input bulan (input dengan keycode)
${BLN_1_W22}  43
${BLN_2_W22}  39
${BLN_3_W22}  48
#input tahun (input dengan keycode)
${THN_1_W22}  9
${THN_2_W22}  7
${THN_3_W22}  8
${THN_4_W22}  14
#HPHT Week 23=========================
#input tanggal (input dengan keycode)
${TGL_1_W23}  8
${TGL_2_W23}  7
#Input bulan (input dengan keycode)
${BLN_1_W23}  43
${BLN_2_W23}  39
${BLN_3_W23}  48
#input tahun (input dengan keycode)
${THN_1_W23}  9
${THN_2_W23}  7
${THN_3_W23}  8
${THN_4_W23}  14
#HPHT Week 24=========================
#input tanggal (input dengan keycode)
${TGL_1_W24}  8
${TGL_2_W24}  7
#Input bulan (input dengan keycode)
${BLN_1_W24}  43
${BLN_2_W24}  39
${BLN_3_W24}  48
#input tahun (input dengan keycode)
${THN_1_W24}  9
${THN_2_W24}  7
${THN_3_W24}  8
${THN_4_W24}  14
#HPHT Week 25=========================
#input tanggal (input dengan keycode)
${TGL_1_W25}  8
${TGL_2_W25}  7
#Input bulan (input dengan keycode)
${BLN_1_W25}  43
${BLN_2_W25}  39
${BLN_3_W25}  48
#input tahun (input dengan keycode)
${THN_1_W25}  9
${THN_2_W25}  7
${THN_3_W25}  8
${THN_4_W25}  14
#HPHT Week 26=========================
#input tanggal (input dengan keycode)
${TGL_1_W26}  8
${TGL_2_W26}  7
#Input bulan (input dengan keycode)
${BLN_1_W26}  43
${BLN_2_W26}  39
${BLN_3_W26}  48
#input tahun (input dengan keycode)
${THN_1_W26}  9
${THN_2_W26}  7
${THN_3_W26}  8
${THN_4_W26}  14
#HPHT Week 27=========================
#input tanggal (input dengan keycode)
${TGL_1_W27}  8
${TGL_2_W27}  7
#Input bulan (input dengan keycode)
${BLN_1_W27}  43
${BLN_2_W27}  39
${BLN_3_W27}  48
#input tahun (input dengan keycode)
${THN_1_W27}  9
${THN_2_W27}  7
${THN_3_W27}  8
${THN_4_W27}  14
#HPHT Week 28=========================
#input tanggal (input dengan keycode)
${TGL_1_W28}  8
${TGL_2_W28}  7
#Input bulan (input dengan keycode)
${BLN_1_W28}  43
${BLN_2_W28}  39
${BLN_3_W28}  48
#input tahun (input dengan keycode)
${THN_1_W28}  9
${THN_2_W28}  7
${THN_3_W28}  8
${THN_4_W28}  14
#HPHT Week 29=========================
#input tanggal (input dengan keycode)
${TGL_1_W29}  8
${TGL_2_W29}  7
#Input bulan (input dengan keycode)
${BLN_1_W29}  43
${BLN_2_W29}  39
${BLN_3_W29}  48
#input tahun (input dengan keycode)
${THN_1_W29}  9
${THN_2_W29}  7
${THN_3_W29}  8
${THN_4_W29}  14
#HPHT Week 30=========================
#input tanggal (input dengan keycode)
${TGL_1_W30}  8
${TGL_2_W30}  7
#Input bulan (input dengan keycode)
${BLN_1_W30}  43
${BLN_2_W30}  39
${BLN_3_W30}  48
#input tahun (input dengan keycode)
${THN_1_W30}  9
${THN_2_W30}  7
${THN_3_W30}  8
${THN_4_W30}  14
#HPHT Week 31=========================
#input tanggal (input dengan keycode)
${TGL_1_W31}  8
${TGL_2_W31}  7
#Input bulan (input dengan keycode)
${BLN_1_W31}  43
${BLN_2_W31}  39
${BLN_3_W31}  48
#input tahun (input dengan keycode)
${THN_1_W31}  9
${THN_2_W31}  7
${THN_3_W31}  8
${THN_4_W31}  14
#HPHT Week 32========================
#input tanggal (input dengan keycode)
${TGL_1_W32}  8
${TGL_2_W32}  7
#Input bulan (input dengan keycode)
${BLN_1_W32}  43
${BLN_2_W32}  39
${BLN_3_W32}  48
#input tahun (input dengan keycode)
${THN_1_W32}  9
${THN_2_W32}  7
${THN_3_W32}  8
${THN_4_W32}  14
#HPHT Week 33========================
#input tanggal (input dengan keycode)
${TGL_1_W33}  8
${TGL_2_W33}  7
#Input bulan (input dengan keycode)
${BLN_1_W33}  43
${BLN_2_W33}  39
${BLN_3_W33}  48
#input tahun (input dengan keycode)
${THN_1_W33}  9
${THN_2_W33}  7
${THN_3_W33}  8
${THN_4_W33}  14
#HPHT Week 34=======================
#input tanggal (input dengan keycode)
${TGL_1_W34}  8
${TGL_2_W34}  7
#Input bulan (input dengan keycode)
${BLN_1_W34}  43
${BLN_2_W34}  39
${BLN_3_W34}  48
#input tahun (input dengan keycode)
${THN_1_W34}  9
${THN_2_W34}  7
${THN_3_W34}  8
${THN_4_W34}  14
#HPHT Week 35========================
#input tanggal (input dengan keycode)
${TGL_1_W35}  8
${TGL_2_W35}  7
#Input bulan (input dengan keycode)
${BLN_1_W35}  43
${BLN_2_W35}  39
${BLN_3_W35}  48
#input tahun (input dengan keycode)
${THN_1_W35}  9
${THN_2_W35}  7
${THN_3_W35}  8
${THN_4_W35}  14
#HPHT Week 36========================
#input tanggal (input dengan keycode)
${TGL_1_W36}  8
${TGL_2_W36}  7
#Input bulan (input dengan keycode)
${BLN_1_W36}  43
${BLN_2_W36}  39
${BLN_3_W36}  48
#input tahun (input dengan keycode)
${THN_1_W36}  9
${THN_2_W36}  7
${THN_3_W36}  8
${THN_4_W36}  14
#HPHT Week 37========================
#input tanggal (input dengan keycode)
${TGL_1_W37}  8
${TGL_2_W37}  7
#Input bulan (input dengan keycode)
${BLN_1_W37}  43
${BLN_2_W37}  39
${BLN_3_W37}  48
#input tahun (input dengan keycode)
${THN_1_W37}  9
${THN_2_W37}  7
${THN_3_W37}  8
${THN_4_W37}  14
#HPHT Week 38========================
#input tanggal (input dengan keycode)
${TGL_1_W38}  8
${TGL_2_W38}  7
#Input bulan (input dengan keycode)
${BLN_1_W38}  43
${BLN_2_W38}  39
${BLN_3_W38}  48
#input tahun (input dengan keycode)
${THN_1_W38}  9
${THN_2_W38}  7
${THN_3_W38}  8
${THN_4_W38}  14
#HPHT Week 39========================
#input tanggal (input dengan keycode)
${TGL_1_W39}  8
${TGL_2_W39}  7
#Input bulan (input dengan keycode)
${BLN_1_W39}  43
${BLN_2_W39}  39
${BLN_3_W39}  48
#input tahun (input dengan keycode)
${THN_1_W39}  9
${THN_2_W39}  7
${THN_3_W39}  8
${THN_4_W39}  14
#HPHT Week 40========================
#input tanggal (input dengan keycode)
${TGL_1_W40}  8
${TGL_2_W40}  7
#Input bulan (input dengan keycode)
${BLN_1_W40}  43
${BLN_2_W40}  39
${BLN_3_W40}  48
#input tahun (input dengan keycode)
${THN_1_W40}  9
${THN_2_W40}  7
${THN_3_W40}  8
${THN_4_W40}  14
#HPHT Week 41========================
#input tanggal (input dengan keycode)
${TGL_1_W41}  8
${TGL_2_W41}  7
#Input bulan (input dengan keycode)
${BLN_1_W41}  43
${BLN_2_W41}  39
${BLN_3_W41}  48
#input tahun (input dengan keycode)
${THN_1_W41}  9
${THN_2_W41}  7
${THN_3_W41}  8
${THN_4_W41}  14
#HPHT Week 42========================
#input tanggal (input dengan keycode)
${TGL_1_W42}  8
${TGL_2_W42}  7
#Input bulan (input dengan keycode)
${BLN_1_W42}  43
${BLN_2_W42}  39
${BLN_3_W42}  48
#input tahun (input dengan keycode)
${THN_1_W42}  9
${THN_2_W42}  7
${THN_3_W42}  8
${THN_4_W42}  14
#nama Anak
${BabyW1}   tes5a
${BabyW2}   tes6
${BabyW3}   tes7
${BabyW4}   tes8
${BabyW5}   tes9
${BabyW6}   BayiW6az
${BabyW7}   BayiW7az
${BabyW8}   BayiW8az
${BabyW9}   BayiW9az
${BabyW10}  BayiW10az
${BabyW11}  BayiW11az
${BabyW12}  BayiW12az
${BabyW13}  BayiW13az
${BabyW14}  BayiW14az
${BabyW15}  BayiW15az
${BabyW16}  BayiW16az
${BabyW17}  BayiW17az
${BabyW18}  BayiW18az
${BabyW19}  BayiW19az
${BabyW20}  BayiW20az
${BabyW21}  BayiW21az
${BabyW22}  BayiW22az
${BabyW23}  BayiW23az
${BabyW24}  BayiW24az
${BabyW25}  BayiW25az
${BabyW26}  BayiW26az
${BabyW27}  BayiW27az
${BabyW28}  BayiW28az
${BabyW29}  BayiW29az
${BabyW30}  BayiW30az
${BabyW31}  BayiW31az
${BabyW32}  BayiW32az
${BabyW33}  BayiW33az
${BabyW34}  BayiW34az
${BabyW35}  BayiW35az
${BabyW36}  BayiW36az
${BabyW37}  BayiW37az
${BabyW38}  BayiW38az
${BabyW39}  BayiW39az
${BabyW40}  BayiW40az
${BabyW41}  BayiW41az
${BabyW42}  BayiW42az
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
    Swipe    547    490    547    98
    Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
    Element Name Should Be    id=btn_add_child    Tambah Anak
    Click Element    id=btn_add_child
    #input nama Anak
    Wait Until Element Is Visible    id=et_child_name   ${time_sec}
    Input Text    id=et_child_name    ${BabyW1}
    #input tanggal langsung dengan long press
    Wait Until Element Is Visible    android:id/pickers   ${time_sec}
    Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
    Sleep    1s
    Press Keycode    ${TGL_1_W1}
    Press Keycode    ${TGL_2_W1}
    Klik Enter
    Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
    Sleep    1s
    Press Keycode    ${BLN_1_W1}
    Press Keycode    ${BLN_2_W1}
    Press Keycode    ${BLN_3_W1}
    Klik Enter
    Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
    Sleep    1s
    Press Keycode    ${THN_1_W1}
    Press Keycode    ${THN_2_W1}
    Press Keycode    ${THN_3_W1}
    Press Keycode    ${THN_4_W1}
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
Tambah anak Week 2
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW2}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W2}
  Press Keycode    ${TGL_2_W2}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W2}
  Press Keycode    ${BLN_2_W2}
  Press Keycode    ${BLN_3_W2}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W2}
  Press Keycode    ${THN_2_W2}
  Press Keycode    ${THN_3_W2}
  Press Keycode    ${THN_4_W2}
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
  #coachmark handle      #hanya digunakan 1x diawal saja
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW3}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W3}
  Press Keycode    ${TGL_2_W3}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W3}
  Press Keycode    ${BLN_2_W3}
  Press Keycode    ${BLN_3_W3}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W3}
  Press Keycode    ${THN_2_W3}
  Press Keycode    ${THN_3_W3}
  Press Keycode    ${THN_4_W3}
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
  #coachmark handle      #hanya digunakan 1x diawal saja
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
  Press Keycode    ${TGL_1_W4}
  Press Keycode    ${TGL_2_W4}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W4}
  Press Keycode    ${BLN_2_W4}
  Press Keycode    ${BLN_3_W4}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W4}
  Press Keycode    ${THN_2_W4}
  Press Keycode    ${THN_3_W4}
  Press Keycode    ${THN_4_W4}
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
  #coachmark handle      #hanya digunakan 1x diawal saja
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW5}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W5}
  Press Keycode    ${TGL_2_W5}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W5}
  Press Keycode    ${BLN_2_W5}
  Press Keycode    ${BLN_3_W5}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W5}
  Press Keycode    ${THN_2_W5}
  Press Keycode    ${THN_3_W5}
  Press Keycode    ${THN_4_W5}
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
  #coachmark handle      #hanya digunakan 1x diawal saja
