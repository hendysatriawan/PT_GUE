*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    6.0
${DEVICE_NAME}    192.168.39.101:5555
${APP}            com.temanbumil.android
${APP_PACKAGE}    com.temanbumil.android
${APP_ACTIVITY}    com.temanbumil.android.authentication.AuthenticationActivity
${HOME_ACTIVITY}    com.temanbumil.android.home.HomeActivity
#Nama Anak
${NAMA_ANAK_W1}    BabyW1
${NAMA_ANAK_W2}    BabyW2
${NAMA_ANAK_W3}    BabyW3
${NAMA_ANAK_W4}    BabyW4
${NAMA_ANAK_W5}    BabyW5
${NAMA_ANAK_W6}    BabyW6
${NAMA_ANAK_W7}    BabyW7
${NAMA_ANAK_W8}    BabyW8
${NAMA_ANAK_W9}    BabyW9
${NAMA_ANAK_W10}    BabyW10
${NAMA_ANAK_W11}    BabyW11
${NAMA_ANAK_W12}    BabyW12
${NAMA_ANAK_W13}    BabyW13
${NAMA_ANAK_W14}    BabyW14
${NAMA_ANAK_W15}    BabyW15
${NAMA_ANAK_W16}    BabyW16
${NAMA_ANAK_W17}    BabyW17
${NAMA_ANAK_W18}    BabyW18
${NAMA_ANAK_W19}    BabyW19
${NAMA_ANAK_W20}    BabyW20
${NAMA_ANAK_W21}    BabyW21
${NAMA_ANAK_W22}    BabyW22
${NAMA_ANAK_W23}    BabyW23
${NAMA_ANAK_W24}    BabyW24
${NAMA_ANAK_W25}    BabyW25
${NAMA_ANAK_W26}    BabyW26
${NAMA_ANAK_W27}    BabyW27
${NAMA_ANAK_W28}    BabyW28
${NAMA_ANAK_W29}    BabyW29
${NAMA_ANAK_W30}    BabyW30
${NAMA_ANAK_W31}    BabyW31
${NAMA_ANAK_W32}    BabyW32
${NAMA_ANAK_W33}    BabyW33
${NAMA_ANAK_W34}    BabyW34
${NAMA_ANAK_W35}    BabyW35
${NAMA_ANAK_W36}    BabyW36
${NAMA_ANAK_W37}    BabyW37
${NAMA_ANAK_W38}    BabyW38
${NAMA_ANAK_W39}    BabyW39
${NAMA_ANAK_W40}    BabyW40
${NAMA_ANAK_W41}    BabyW41
${NAMA_ANAK_W42}    BabyW42

*** Test Cases ***
Login_valid
    [Documentation]    Try to login using valid member
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    Input Text    id=et_email    ben2@yopmail.com
    Input Password    id=et_password    12345678
    Click Element    id=btn_login
    Wait Until Element Is Visible    id=tv_title
    Element Name Should Be    id=tv_title    Teman Bumil
    Close Application

Tambah_Anak_Week_1
    [Documentation]    Tambahkan anak untuk mendapatkan push notif week 1
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
