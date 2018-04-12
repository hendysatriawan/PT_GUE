*** Settings ***
Library           AppiumLibrary
Library           BuiltIn

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION_EMULATOR}    6.0
${PLATFORM_VERSION_REAL}    7.1.1
${DEVICE_NAME_EMULATOR}    192.168.56.101:5555
${DEVICE_NAME_REAL}    49ffe4aa
${APP}            com.temanbumil.android
${APP_PACKAGE}    com.temanbumil.android
${APP_ACTIVITY}    com.temanbumil.android.authentication.AuthenticationActivity
${APP_ACTIVITY_SPLASH}    com.temanbumil.android.splash.SplashActivity
${APP_ACTIVITY_HOME}    com.temanbumil.android.home.HomeActivity
#data login
${USERNAME}       ben3@yopmail.com
${PASSWORD}       12345678
${PROFILE_NAME}    Aquila Majid
#data register
${FIRST_NAME}     ani
${LAST_NAME}      sutes
${EMAIL_USER}     anisutes1@yopmail.com
${PASSWORD_USER}    12345678
#daftar Keycode
#Nomor
${0}              7
${1}              8
${2}              9
${3}              10
${4}              11
${5}              12
${6}              13
${7}              14
${8}              15
${9}              16
${back}           4
${enter}          66
#huruf
${A}              29
${B}              30
${C}              31
${D}              32
${E}              33
${F}              34
${G}              35
${H}              36
${I}              37
${J}              38
${K}              39
${L}              40
${M}              41
${N}              42
${O}              43
${P}              44
${Q}              45
${R}              46
${S}              47
${T}              48
${U}              49
${V}              50
${W}              51
${X}              52
${Y}              53
${Z}              54
#nama Anak
${BabyW1}         testnewW1
#waktu
${time_sec}       60s
${time_min}       8m

*** Test Cases ***
Login_valid
    [Documentation]    Try to login using valid member
    Buka Aplikasi
    Sleep    2s
    #permission handle
    Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message    ${time_sec}
    Click Element    com.android.packageinstaller:id/permission_allow_button
    #skip splash screen
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']    ${time_sec}
    Click Element    xpath=//android.widget.Button[@text='SKIP']
    #login
    Input Text    id=et_email    ${USERNAME}
    Input Password    id=et_password    ${PASSWORD}
    Click Element    id=btn_login
    #coachmark handle
    Wait Until Element Is Visible    id=tv_title    ${time_sec}
    Element Name Should Be    id=tv_title    Teman Bumil
    # # -- dienable kalau sudah ada anak
    # Wait Until Element Is Visible    id=tv_title    100s
    # Element Name Should Be    id=tv_title    Teman Bumil
    # # -- coachmark handle
    # Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']    10s
    # Click Element    xpath=//android.widget.Button[@text='GOT IT']

Tambah_Anak_Week_1
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 1
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    #Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W1}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_2
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 2
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W2}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_3
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 3
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W3}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_4
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 4
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W4}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_5
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 5
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W5}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_6
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 6
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W6}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_7
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 7
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W7}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_8
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 8
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W8}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_9
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 9
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W9}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_10
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 10
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W10}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_11
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 11
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W11}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_12
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 12
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW1']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W12}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_13
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 13
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Sleep    1s
    #Scroll    xpath=//android.widget.TextView[@text='BabyW11']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W13}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_14
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 14
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W14}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_15
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 15
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W15}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_16
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 16
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W16}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_17
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 17
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W17}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_18
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 18
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W18}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_19
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 19
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W19}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_20
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 20
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W20}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_21
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 21
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W21}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_22
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 22
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W22}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_23
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 23
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W23}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_24
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 234
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W24}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_25
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 25
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W25}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_26
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 26
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W26}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_27
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 27
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W27}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_28
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 28
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W28}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_29
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 29
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W29}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_30
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 30
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W30}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_31
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 31
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W31}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save\
    Close Application

Tambah_Anak_Week_32
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 32
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W32}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_33
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 33
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W33}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_34
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 34
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W34}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_35
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 35
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W35}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_36
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 36
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W36}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_37
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 37
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W37}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_38
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 38
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W38}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_39
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 39
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W39}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_40
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 40
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W40}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_41
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 41
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W41}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

Tambah_Anak_Week_42
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 42
    Sleep    5s
    #Buka Menu Home
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${HOME_ACTIVITY}
    #Buka menu
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile
    Element Name Should Be    id=tv_nav_profile    Ben ben2
    Click Element    id=tv_nav_child
    Scroll    xpath=//android.widget.TextView[@text='BabyW5']    xpath=//android.widget.Button[@text='Tambah Anak']
    Wait Until Element Is Visible    id=btn_add_child
    Element Name Should Be    id=btn_add_child    Tambah Anak
    #Buka Menu Tambah Anak
    Click Element    id=btn_add_child
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Tambah Anak
    #Input Detail Anak
    Input Text    id=et_child_name    ${NAMA_ANAK_W42}
    #disini input untuk edit tanggal
    #Long Press    xpath=//android.widget.EditText[@text='26']
    #Input Text    xpath=//android.widget.EditText[@index='1']    15
    #Press Keycode    KEYCODE_ENTER    none
    #Pilih jenis kelamin
    Click Element    xpath=//android.widget.TextView[@index='0']
    Click Element    xpath=//android.widget.TextView[@text='Laki-laki']
    Sleep    20s
    Click Element    id=btn_save
    Close Application

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
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']    ${time_sec}
    Click Element    xpath=//android.widget.Button[@text='GOT IT']

Masuk ke profile
    Log    masuk ke halaman profile
    Wait Until Element Is Visible    id=btn_navigation    ${time_sec}
    Click Element    id=btn_navigation
    Wait Until Element Is Visible    id=tv_nav_profile    ${time_sec}
    Click Element    id=tv_nav_profile

Ubah jadi sudah lahir
    Log    Ubah fetus menjadi sudah melahirkan
    Wait Until Element Is Visible    ${APP}:id/tv_baby_name    100s
    Scroll    xpath=//android.widget.TextView[@text='Sedang Hamil']    xpath=//android.widget.Button[@text='${BabyW1}']
    Sleep    1s
    Click Element    id=tv_baby_name
    Wait Until Element Is Visible    ${APP}:id/sudahLahir    100s
