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
#HPHT Week 1=========================
#input tanggal (input dengan keycode)
${TGL_1_W1}  7
${TGL_2_W1}  9
#Input bulan (input dengan keycode)
${BLN_1_W1}  29
${BLN_2_W1}  44
${BLN_3_W1}  46
#input tahun (input dengan keycode)
${THN_1_W1}  9
${THN_2_W1}  7
${THN_3_W1}  8
${THN_4_W1}  15
#HPHT Week 2=========================
#input tanggal (input dengan keycode)
${TGL_1_W2}  9
${TGL_2_W2}  13
#Input bulan (input dengan keycode)
${BLN_1_W2}  41
${BLN_2_W2}  29
${BLN_3_W2}  46
#input tahun (input dengan keycode)
${THN_1_W2}  9
${THN_2_W2}  7
${THN_3_W2}  8
${THN_4_W2}  15
#HPHT Week 3=========================
#input tanggal (input dengan keycode)
${TGL_1_W3}  8
${TGL_2_W3}  16
#Input bulan (input dengan keycode)
${BLN_1_W3}  41
${BLN_2_W3}  29
${BLN_3_W3}  46
#input tahun (input dengan keycode)
${THN_1_W3}  9
${THN_2_W3}  7
${THN_3_W3}  8
${THN_4_W3}  15
#HPHT Week 4=========================
#input tanggal (input dengan keycode)
${TGL_1_W4}  8
${TGL_2_W4}  9
#Input bulan (input dengan keycode)
${BLN_1_W4}  41
${BLN_2_W4}  29
${BLN_3_W4}  46
#input tahun (input dengan keycode)
${THN_1_W4}  9
${THN_2_W4}  7
${THN_3_W4}  8
${THN_4_W4}  15
#HPHT Week 5=========================
#input tanggal (input dengan keycode)
${TGL_1_W5}  7
${TGL_2_W5}  12
#Input bulan (input dengan keycode)
${BLN_1_W5}  41
${BLN_2_W5}  29
${BLN_3_W5}  46
#input tahun (input dengan keycode)
${THN_1_W5}  9
${THN_2_W5}  7
${THN_3_W5}  8
${THN_4_W5}  15
#HPHT Week 6=========================
#input tanggal (input dengan keycode)
${TGL_1_W6}  9
${TGL_2_W6}  13
#Input bulan (input dengan keycode)
${BLN_1_W6}  34
${BLN_2_W6}  34
${BLN_3_W6}  30
#input tahun (input dengan keycode)
${THN_1_W6}  9
${THN_2_W6}  7
${THN_3_W6}  8
${THN_4_W6}  15
#HPHT Week 7=========================
#input tanggal (input dengan keycode)
${TGL_1_W7}  8
${TGL_2_W7}  16
#Input bulan (input dengan keycode)
${BLN_1_W7}  34
${BLN_2_W7}  33
${BLN_3_W7}  30
#input tahun (input dengan keycode)
${THN_1_W7}  9
${THN_2_W7}  7
${THN_3_W7}  8
${THN_4_W7}  15
#HPHT Week 8=========================
#input tanggal (input dengan keycode)
${TGL_1_W8}  8
${TGL_2_W8}  9
#Input bulan (input dengan keycode)
${BLN_1_W8}  34
${BLN_2_W8}  33
${BLN_3_W8}  30
#input tahun (input dengan keycode)
${THN_1_W8}  9
${THN_2_W8}  7
${THN_3_W8}  8
${THN_4_W8}  15
#HPHT Week 9=========================
#input tanggal (input dengan keycode)
${TGL_1_W9}  7
${TGL_2_W9}  12
#Input bulan (input dengan keycode)
${BLN_1_W9}  34
${BLN_2_W9}  34
${BLN_3_W9}  40
#input tahun (input dengan keycode)
${THN_1_W9}  9
${THN_2_W9}  7
${THN_3_W9}  8
${THN_4_W9}  15
#HPHT Week 10========================
#input tanggal (input dengan keycode)
${TGL_1_W10}  9
${TGL_2_W10}  16
#Input bulan (input dengan keycode)
${BLN_1_W10}  38
${BLN_2_W10}  29
${BLN_3_W10}  42
#input tahun (input dengan keycode)
${THN_1_W10}  9
${THN_2_W10}  7
${THN_3_W10}  8
${THN_4_W10}  15
#HPHT Week 11========================
#input tanggal (input dengan keycode)
${TGL_1_W11}  9
${TGL_2_W11}  9
#Input bulan (input dengan keycode)
${BLN_1_W11}  38
${BLN_2_W11}  29
${BLN_3_W11}  42
#input tahun (input dengan keycode)
${THN_1_W11}  9
${THN_2_W11}  7
${THN_3_W11}  8
${THN_4_W11}  15
#HPHT Week 12=======================
#input tanggal (input dengan keycode)
${TGL_1_W12}  8
${TGL_2_W12}  12
#Input bulan (input dengan keycode)
${BLN_1_W12}  38
${BLN_2_W12}  29
${BLN_3_W12}  42
#input tahun (input dengan keycode)
${THN_1_W12}  9
${THN_2_W12}  7
${THN_3_W12}  8
${THN_4_W12}  15
#HPHT Week 13========================
#input tanggal (input dengan keycode)
${TGL_1_W13}  7
${TGL_2_W13}  15
#Input bulan (input dengan keycode)
${BLN_1_W13}  38
${BLN_2_W13}  29
${BLN_3_W13}  42
#input tahun (input dengan keycode)
${THN_1_W13}  9
${THN_2_W13}  7
${THN_3_W13}  8
${THN_4_W13}  15
#HPHT Week 14========================
#input tanggal (input dengan keycode)
${TGL_1_W14}  7
${TGL_2_W14}  8
#Input bulan (input dengan keycode)
${BLN_1_W14}  38
${BLN_2_W14}  29
${BLN_3_W14}  42
#input tahun (input dengan keycode)
${THN_1_W14}  9
${THN_2_W14}  7
${THN_3_W14}  8
${THN_4_W14}  15
#HPHT Week 15========================
#input tanggal (input dengan keycode)
${TGL_1_W15}  9
${TGL_2_W15}  12
#Input bulan (input dengan keycode)
${BLN_1_W15}  32
${BLN_2_W15}  33
${BLN_3_W15}  47
#input tahun (input dengan keycode)
${THN_1_W15}  9
${THN_2_W15}  7
${THN_3_W15}  8
${THN_4_W15}  14
#HPHT Week 16========================
#input tanggal (input dengan keycode)
${TGL_1_W16}  8
${TGL_2_W16}  15
#Input bulan (input dengan keycode)
${BLN_1_W16}  32
${BLN_2_W16}  33
${BLN_3_W16}  47
#input tahun (input dengan keycode)
${THN_1_W16}  9
${THN_2_W16}  7
${THN_3_W16}  8
${THN_4_W16}  14
#HPHT Week 17========================
#input tanggal (input dengan keycode)
${TGL_1_W17}  8
${TGL_2_W17}  8
#Input bulan (input dengan keycode)
${BLN_1_W17}  32
${BLN_2_W17}  33
${BLN_3_W17}  47
#input tahun (input dengan keycode)
${THN_1_W17}  9
${THN_2_W17}  7
${THN_3_W17}  8
${THN_4_W17}  14
#HPHT Week 18========================
#input tanggal (input dengan keycode)
${TGL_1_W18}  7
${TGL_2_W18}  11
#Input bulan (input dengan keycode)
${BLN_1_W18}  32
${BLN_2_W18}  33
${BLN_3_W18}  47
#input tahun (input dengan keycode)
${THN_1_W18}  9
${THN_2_W18}  7
${THN_3_W18}  8
${THN_4_W18}  14
#HPHT Week 19========================
#input tanggal (input dengan keycode)
${TGL_1_W19}  9
${TGL_2_W19}  14
#Input bulan (input dengan keycode)
${BLN_1_W19}  42
${BLN_2_W19}  43
${BLN_3_W19}  50
#input tahun (input dengan keycode)
${THN_1_W19}  9
${THN_2_W19}  7
${THN_3_W19}  8
${THN_4_W19}  14
#HPHT Week 20========================
#input tanggal (input dengan keycode)
${TGL_1_W20}  9
${TGL_2_W20}  7
#Input bulan (input dengan keycode)
${BLN_1_W20}  42
${BLN_2_W20}  43
${BLN_3_W20}  50
#input tahun (input dengan keycode)
${THN_1_W20}  9
${THN_2_W20}  7
${THN_3_W20}  8
${THN_4_W20}  14
#HPHT Week 21========================
#input tanggal (input dengan keycode)
${TGL_1_W21}  8
${TGL_2_W21}  10
#Input bulan (input dengan keycode)
${BLN_1_W21}  42
${BLN_2_W21}  43
${BLN_3_W21}  50
#input tahun (input dengan keycode)
${THN_1_W21}  9
${THN_2_W21}  7
${THN_3_W21}  8
${THN_4_W21}  14
#HPHT Week 22========================
#input tanggal (input dengan keycode)
${TGL_1_W22}  7
${TGL_2_W22}  13
#Input bulan (input dengan keycode)
${BLN_1_W22}  42
${BLN_2_W22}  43
${BLN_3_W22}  50
#input tahun (input dengan keycode)
${THN_1_W22}  9
${THN_2_W22}  7
${THN_3_W22}  8
${THN_4_W22}  14
#HPHT Week 23=========================
#input tanggal (input dengan keycode)
${TGL_1_W23}  10
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
${TGL_1_W24}  9
${TGL_2_W24}  10
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
${TGL_2_W25}  13
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
${TGL_1_W26}  7
${TGL_2_W26}  16
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
${TGL_1_W27}  7
${TGL_2_W27}  9
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
${TGL_1_W28}  9
${TGL_2_W28}  12
#Input bulan (input dengan keycode)
${BLN_1_W28}  47
${BLN_2_W28}  33
${BLN_3_W28}  44
#input tahun (input dengan keycode)
${THN_1_W28}  9
${THN_2_W28}  7
${THN_3_W28}  8
${THN_4_W28}  14
#HPHT Week 29=========================
#input tanggal (input dengan keycode)
${TGL_1_W29}  8
${TGL_2_W29}  15
#Input bulan (input dengan keycode)
${BLN_1_W29}  47
${BLN_2_W29}  33
${BLN_3_W29}  44
#input tahun (input dengan keycode)
${THN_1_W29}  9
${THN_2_W29}  7
${THN_3_W29}  8
${THN_4_W29}  14
#HPHT Week 30=========================
#input tanggal (input dengan keycode)
${TGL_1_W30}  8
${TGL_2_W30}  8
#Input bulan (input dengan keycode)
${BLN_1_W30}  47
${BLN_2_W30}  33
${BLN_3_W30}  44
#input tahun (input dengan keycode)
${THN_1_W30}  9
${THN_2_W30}  7
${THN_3_W30}  8
${THN_4_W30}  14
#HPHT Week 31=========================
#input tanggal (input dengan keycode)
${TGL_1_W31}  7
${TGL_2_W31}  11
#Input bulan (input dengan keycode)
${BLN_1_W31}  47
${BLN_2_W31}  33
${BLN_3_W31}  44
#input tahun (input dengan keycode)
${THN_1_W31}  9
${THN_2_W31}  7
${THN_3_W31}  8
${THN_4_W31}  14
#HPHT Week 32========================
#input tanggal (input dengan keycode)
${TGL_1_W32}  9
${TGL_2_W32}  15
#Input bulan (input dengan keycode)
${BLN_1_W32}  29
${BLN_2_W32}  35
${BLN_3_W32}  48
#input tahun (input dengan keycode)
${THN_1_W32}  9
${THN_2_W32}  7
${THN_3_W32}  8
${THN_4_W32}  14
#HPHT Week 33========================
#input tanggal (input dengan keycode)
${TGL_1_W33}  9
${TGL_2_W33}  8
#Input bulan (input dengan keycode)
${BLN_1_W33}  29
${BLN_2_W33}  35
${BLN_3_W33}  48
#input tahun (input dengan keycode)
${THN_1_W33}  9
${THN_2_W33}  7
${THN_3_W33}  8
${THN_4_W33}  14
#HPHT Week 34=======================
#input tanggal (input dengan keycode)
${TGL_1_W34}  8
${TGL_2_W34}  11
#Input bulan (input dengan keycode)
${BLN_1_W34}  29
${BLN_2_W34}  35
${BLN_3_W34}  48
#input tahun (input dengan keycode)
${THN_1_W34}  9
${THN_2_W34}  7
${THN_3_W34}  8
${THN_4_W34}  14
#HPHT Week 35========================
#input tanggal (input dengan keycode)
${TGL_1_W35}  7
${TGL_2_W35}  14
#Input bulan (input dengan keycode)
${BLN_1_W35}  29
${BLN_2_W35}  35
${BLN_3_W35}  48
#input tahun (input dengan keycode)
${THN_1_W35}  9
${THN_2_W35}  7
${THN_3_W35}  8
${THN_4_W35}  14
#HPHT Week 36========================
#input tanggal (input dengan keycode)
${TGL_1_W36}  10
${TGL_2_W36}  8
#Input bulan (input dengan keycode)
${BLN_1_W36}  38
${BLN_2_W36}  49
${BLN_3_W36}  40
#input tahun (input dengan keycode)
${THN_1_W36}  9
${THN_2_W36}  7
${THN_3_W36}  8
${THN_4_W36}  14
#HPHT Week 37========================
#input tanggal (input dengan keycode)
${TGL_1_W37}  9
${TGL_2_W37}  11
#Input bulan (input dengan keycode)
${BLN_1_W37}  38
${BLN_2_W37}  49
${BLN_3_W37}  40
#input tahun (input dengan keycode)
${THN_1_W37}  9
${THN_2_W37}  7
${THN_3_W37}  8
${THN_4_W37}  14
#HPHT Week 38========================
#input tanggal (input dengan keycode)
${TGL_1_W38}  8
${TGL_2_W38}  14
#Input bulan (input dengan keycode)
${BLN_1_W38}  38
${BLN_2_W38}  49
${BLN_3_W38}  40
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
${TGL_1_W40}  7
${TGL_2_W40}  10
#Input bulan (input dengan keycode)
${BLN_1_W40}  38
${BLN_2_W40}  49
${BLN_3_W40}  40
#input tahun (input dengan keycode)
${THN_1_W40}  9
${THN_2_W40}  7
${THN_3_W40}  8
${THN_4_W40}  14
#HPHT Week 41========================
#input tanggal (input dengan keycode)
${TGL_1_W41}  9
${TGL_2_W41}  13
#Input bulan (input dengan keycode)
${BLN_1_W41}  38
${BLN_2_W41}  49
${BLN_3_W41}  42
#input tahun (input dengan keycode)
${THN_1_W41}  9
${THN_2_W41}  7
${THN_3_W41}  8
${THN_4_W41}  14
#HPHT Week 42========================
#input tanggal (input dengan keycode)
${TGL_1_W42}  8
${TGL_2_W42}  16
#Input bulan (input dengan keycode)
${BLN_1_W42}  38
${BLN_2_W42}  49
${BLN_3_W42}  42
#input tahun (input dengan keycode)
${THN_1_W42}  9
${THN_2_W42}  7
${THN_3_W42}  8
${THN_4_W42}  14
#nama Anak
${BabyW1}   BayiW1az
${BabyW2}   BayiW2az
${BabyW3}   BayiW3az
${BabyW4}   BayiW4az
${BabyW5}   BayiW5az
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW6}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W6}
  Press Keycode    ${TGL_2_W6}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W6}
  Press Keycode    ${BLN_2_W6}
  Press Keycode    ${BLN_3_W6}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W6}
  Press Keycode    ${THN_2_W6}
  Press Keycode    ${THN_3_W6}
  Press Keycode    ${THN_4_W6}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW7}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W7}
  Press Keycode    ${TGL_2_W7}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W7}
  Press Keycode    ${BLN_2_W7}
  Press Keycode    ${BLN_3_W7}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W7}
  Press Keycode    ${THN_2_W7}
  Press Keycode    ${THN_3_W7}
  Press Keycode    ${THN_4_W7}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW8}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W8}
  Press Keycode    ${TGL_2_W8}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W8}
  Press Keycode    ${BLN_2_W8}
  Press Keycode    ${BLN_3_W8}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W8}
  Press Keycode    ${THN_2_W8}
  Press Keycode    ${THN_3_W8}
  Press Keycode    ${THN_4_W8}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW9}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W9}
  Press Keycode    ${TGL_2_W9}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W9}
  Press Keycode    ${BLN_2_W9}
  Press Keycode    ${BLN_3_W9}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W9}
  Press Keycode    ${THN_2_W9}
  Press Keycode    ${THN_3_W9}
  Press Keycode    ${THN_4_W9}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW10}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W10}
  Press Keycode    ${TGL_2_W10}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W10}
  Press Keycode    ${BLN_2_W10}
  Press Keycode    ${BLN_3_W10}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W10}
  Press Keycode    ${THN_2_W10}
  Press Keycode    ${THN_3_W10}
  Press Keycode    ${THN_4_W10}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW11}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W11}
  Press Keycode    ${TGL_2_W11}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W11}
  Press Keycode    ${BLN_2_W11}
  Press Keycode    ${BLN_3_W11}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W11}
  Press Keycode    ${THN_2_W11}
  Press Keycode    ${THN_3_W11}
  Press Keycode    ${THN_4_W11}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW12}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W12}
  Press Keycode    ${TGL_2_W12}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W12}
  Press Keycode    ${BLN_2_W12}
  Press Keycode    ${BLN_3_W12}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W12}
  Press Keycode    ${THN_2_W12}
  Press Keycode    ${THN_3_W12}
  Press Keycode    ${THN_4_W12}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW13}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W13}
  Press Keycode    ${TGL_2_W13}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W13}
  Press Keycode    ${BLN_2_W13}
  Press Keycode    ${BLN_3_W13}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W13}
  Press Keycode    ${THN_2_W13}
  Press Keycode    ${THN_3_W13}
  Press Keycode    ${THN_4_W13}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW14}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W14}
  Press Keycode    ${TGL_2_W14}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W14}
  Press Keycode    ${BLN_2_W14}
  Press Keycode    ${BLN_3_W14}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W14}
  Press Keycode    ${THN_2_W14}
  Press Keycode    ${THN_3_W14}
  Press Keycode    ${THN_4_W14}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW15}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W15}
  Press Keycode    ${TGL_2_W15}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W15}
  Press Keycode    ${BLN_2_W15}
  Press Keycode    ${BLN_3_W15}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W15}
  Press Keycode    ${THN_2_W15}
  Press Keycode    ${THN_3_W15}
  Press Keycode    ${THN_4_W15}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW16}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W16}
  Press Keycode    ${TGL_2_W16}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W16}
  Press Keycode    ${BLN_2_W16}
  Press Keycode    ${BLN_3_W16}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W16}
  Press Keycode    ${THN_2_W16}
  Press Keycode    ${THN_3_W16}
  Press Keycode    ${THN_4_W16}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW17}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W17}
  Press Keycode    ${TGL_2_W17}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W17}
  Press Keycode    ${BLN_2_W17}
  Press Keycode    ${BLN_3_W17}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W17}
  Press Keycode    ${THN_2_W17}
  Press Keycode    ${THN_3_W17}
  Press Keycode    ${THN_4_W17}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW18}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W18}
  Press Keycode    ${TGL_2_W18}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W18}
  Press Keycode    ${BLN_2_W18}
  Press Keycode    ${BLN_3_W18}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W18}
  Press Keycode    ${THN_2_W18}
  Press Keycode    ${THN_3_W18}
  Press Keycode    ${THN_4_W18}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW19}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W19}
  Press Keycode    ${TGL_2_W19}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W19}
  Press Keycode    ${BLN_2_W19}
  Press Keycode    ${BLN_3_W19}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W19}
  Press Keycode    ${THN_2_W19}
  Press Keycode    ${THN_3_W19}
  Press Keycode    ${THN_4_W19}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW20}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W20}
  Press Keycode    ${TGL_2_W20}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W20}
  Press Keycode    ${BLN_2_W20}
  Press Keycode    ${BLN_3_W20}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W20}
  Press Keycode    ${THN_2_W20}
  Press Keycode    ${THN_3_W20}
  Press Keycode    ${THN_4_W20}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW21}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W21}
  Press Keycode    ${TGL_2_W21}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W21}
  Press Keycode    ${BLN_2_W21}
  Press Keycode    ${BLN_3_W21}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W21}
  Press Keycode    ${THN_2_W21}
  Press Keycode    ${THN_3_W21}
  Press Keycode    ${THN_4_W21}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW22}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W22}
  Press Keycode    ${TGL_2_W22}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W22}
  Press Keycode    ${BLN_2_W22}
  Press Keycode    ${BLN_3_W22}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W22}
  Press Keycode    ${THN_2_W22}
  Press Keycode    ${THN_3_W22}
  Press Keycode    ${THN_4_W22}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW23}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W23}
  Press Keycode    ${TGL_2_W23}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W23}
  Press Keycode    ${BLN_2_W23}
  Press Keycode    ${BLN_3_W23}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W23}
  Press Keycode    ${THN_2_W23}
  Press Keycode    ${THN_3_W23}
  Press Keycode    ${THN_4_W23}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW24}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W24}
  Press Keycode    ${TGL_2_W24}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W24}
  Press Keycode    ${BLN_2_W24}
  Press Keycode    ${BLN_3_W24}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W24}
  Press Keycode    ${THN_2_W24}
  Press Keycode    ${THN_3_W24}
  Press Keycode    ${THN_4_W24}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW25}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W25}
  Press Keycode    ${TGL_2_W25}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W25}
  Press Keycode    ${BLN_2_W25}
  Press Keycode    ${BLN_3_W25}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W25}
  Press Keycode    ${THN_2_W25}
  Press Keycode    ${THN_3_W25}
  Press Keycode    ${THN_4_W25}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW26}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W26}
  Press Keycode    ${TGL_2_W26}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W26}
  Press Keycode    ${BLN_2_W26}
  Press Keycode    ${BLN_3_W26}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W26}
  Press Keycode    ${THN_2_W26}
  Press Keycode    ${THN_3_W26}
  Press Keycode    ${THN_4_W26}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW27}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W27}
  Press Keycode    ${TGL_2_W27}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W27}
  Press Keycode    ${BLN_2_W27}
  Press Keycode    ${BLN_3_W27}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W27}
  Press Keycode    ${THN_2_W27}
  Press Keycode    ${THN_3_W27}
  Press Keycode    ${THN_4_W27}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW28}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W28}
  Press Keycode    ${TGL_2_W28}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W28}
  Press Keycode    ${BLN_2_W28}
  Press Keycode    ${BLN_3_W28}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W28}
  Press Keycode    ${THN_2_W28}
  Press Keycode    ${THN_3_W28}
  Press Keycode    ${THN_4_W28}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW29}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W29}
  Press Keycode    ${TGL_2_W29}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W29}
  Press Keycode    ${BLN_2_W29}
  Press Keycode    ${BLN_3_W29}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W29}
  Press Keycode    ${THN_2_W29}
  Press Keycode    ${THN_3_W29}
  Press Keycode    ${THN_4_W29}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW30}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W30}
  Press Keycode    ${TGL_2_W30}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W30}
  Press Keycode    ${BLN_2_W30}
  Press Keycode    ${BLN_3_W30}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W30}
  Press Keycode    ${THN_2_W30}
  Press Keycode    ${THN_3_W30}
  Press Keycode    ${THN_4_W30}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW31}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W31}
  Press Keycode    ${TGL_2_W31}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W31}
  Press Keycode    ${BLN_2_W31}
  Press Keycode    ${BLN_3_W31}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W31}
  Press Keycode    ${THN_2_W31}
  Press Keycode    ${THN_3_W31}
  Press Keycode    ${THN_4_W31}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW32}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W32}
  Press Keycode    ${TGL_2_W32}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W32}
  Press Keycode    ${BLN_2_W32}
  Press Keycode    ${BLN_3_W32}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W32}
  Press Keycode    ${THN_2_W32}
  Press Keycode    ${THN_3_W32}
  Press Keycode    ${THN_4_W32}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW33}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W33}
  Press Keycode    ${TGL_2_W33}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W33}
  Press Keycode    ${BLN_2_W33}
  Press Keycode    ${BLN_3_W33}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W33}
  Press Keycode    ${THN_2_W33}
  Press Keycode    ${THN_3_W33}
  Press Keycode    ${THN_4_W33}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW34}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W34}
  Press Keycode    ${TGL_2_W34}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W34}
  Press Keycode    ${BLN_2_W34}
  Press Keycode    ${BLN_3_W34}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W34}
  Press Keycode    ${THN_2_W34}
  Press Keycode    ${THN_3_W34}
  Press Keycode    ${THN_4_W34}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW35}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W35}
  Press Keycode    ${TGL_2_W35}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W35}
  Press Keycode    ${BLN_2_W35}
  Press Keycode    ${BLN_3_W35}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W35}
  Press Keycode    ${THN_2_W35}
  Press Keycode    ${THN_3_W35}
  Press Keycode    ${THN_4_W35}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW36}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W36}
  Press Keycode    ${TGL_2_W36}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W36}
  Press Keycode    ${BLN_2_W36}
  Press Keycode    ${BLN_3_W36}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W36}
  Press Keycode    ${THN_2_W36}
  Press Keycode    ${THN_3_W36}
  Press Keycode    ${THN_4_W36}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW37}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W37}
  Press Keycode    ${TGL_2_W37}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W37}
  Press Keycode    ${BLN_2_W37}
  Press Keycode    ${BLN_3_W37}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W37}
  Press Keycode    ${THN_2_W37}
  Press Keycode    ${THN_3_W37}
  Press Keycode    ${THN_4_W37}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW38}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W38}
  Press Keycode    ${TGL_2_W38}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W38}
  Press Keycode    ${BLN_2_W38}
  Press Keycode    ${BLN_3_W38}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W38}
  Press Keycode    ${THN_2_W38}
  Press Keycode    ${THN_3_W38}
  Press Keycode    ${THN_4_W38}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW39}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W39}
  Press Keycode    ${TGL_2_W39}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W39}
  Press Keycode    ${BLN_2_W39}
  Press Keycode    ${BLN_3_W39}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W39}
  Press Keycode    ${THN_2_W39}
  Press Keycode    ${THN_3_W39}
  Press Keycode    ${THN_4_W39}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW40}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W40}
  Press Keycode    ${TGL_2_W40}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W40}
  Press Keycode    ${BLN_2_W40}
  Press Keycode    ${BLN_3_W40}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W40}
  Press Keycode    ${THN_2_W40}
  Press Keycode    ${THN_3_W40}
  Press Keycode    ${THN_4_W40}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW41}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W41}
  Press Keycode    ${TGL_2_W41}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W41}
  Press Keycode    ${BLN_2_W41}
  Press Keycode    ${BLN_3_W41}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W41}
  Press Keycode    ${THN_2_W41}
  Press Keycode    ${THN_3_W41}
  Press Keycode    ${THN_4_W41}
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
  Swipe    547    490    547    98
  Wait Until Element Is Visible    id=btn_add_child   ${time_sec}
  Element Name Should Be    id=btn_add_child    Tambah Anak
  Click Element    id=btn_add_child
  #input nama Anak
  Wait Until Element Is Visible    id=et_child_name   ${time_sec}
  Input Text    id=et_child_name    ${BabyW42}
  #input tanggal langsung dengan long press
  Wait Until Element Is Visible    android:id/pickers   ${time_sec}
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${TGL_1_W42}
  Press Keycode    ${TGL_2_W42}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${BLN_1_W42}
  Press Keycode    ${BLN_2_W42}
  Press Keycode    ${BLN_3_W42}
  Klik Enter
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Sleep    1s
  Press Keycode    ${THN_1_W42}
  Press Keycode    ${THN_2_W42}
  Press Keycode    ${THN_3_W42}
  Press Keycode    ${THN_4_W42}
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
