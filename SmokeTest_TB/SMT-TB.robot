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
    #-- dienable kalau sudah ada anak
    Wait Until Element Is Visible    id=tv_title  100s
    Element Name Should Be    id=tv_title    Teman Bumil
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
    Click Element    xpath=//android.widget.Button[@text='GOT IT']


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
    #coachmark handle
    Sleep    2s
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
    Click Element    xpath=//android.widget.Button[@text='GOT IT']
    #cek program hamil page
    Wait Until Element Is Visible    com.temanbumil.android:id/btn_checklist  10s
    Element Should Be Visible    com.temanbumil.android:id/btn_checklist      # cek adanya text checklist
    Element Should Be Visible    com.temanbumil.android:id/txt_mother         # cek adanya tombol jika sudah hamil
    Element Should Be Visible    com.temanbumil.android:id/tv_title           # Cek tittle teman bumil
    Sleep    2s
    #masuk ke dalam artikel
    Click Element At Coordinates    538    484
    #masuk ke halaman artikel
    Wait Until Element Is Visible    com.temanbumil.android:id/btn_actionbar_back   10s
    #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Sleep    2s
    #click artikel paling bawah
    Click Element At Coordinates    452    1143
    #Scroll artikel ke bawah
    Swipe    406    1350    406    300
    Swipe    406    1350    406    300
    Swipe    406    1350    406    300
    Sleep    2s
    #Scroll balik lagi sampai atas
    Swipe    406    300    406    1350
    Swipe    406    300    406    1350
    Swipe    406    300    406    1350
    Sleep    2s
    #Click tombol back
    Click Element At Coordinates    58    151
    Sleep    2s
    Click Element At Coordinates    58    151
    #cek lagi kembali ke halaman program HAMIL
    Wait Until Element Is Visible    com.temanbumil.android:id/btn_checklist  10s
    #swipe ke artikel sebelah kanan
    Swipe    796    415    34    430
    Swipe    796    415    34    430
    #pilih artikel lagi (artikel sebelah kanan)
    Click Element At Coordinates    538    484
    #tunggu artikel show lalu klik back ke halaman
    Wait Until Element Is Visible    com.temanbumil.android:id/btn_actionbar_back   10s
    Click Element At Coordinates    58    151
    #cek halaman program hamil
    Wait Until Element Is Visible    com.temanbumil.android:id/btn_checklist  10s
    Element Should Be Visible    com.temanbumil.android:id/btn_checklist      # cek adanya text checklist
    Element Should Be Visible    com.temanbumil.android:id/txt_mother         # cek adanya tombol jika sudah hamil
    Element Should Be Visible    com.temanbumil.android:id/tv_title           # Cek tittle teman bumil
    Sleep    2s
    # Sleep    1s
    # Swipe    399    288    387    1294
    # Click Element    com.temanbumil.android:id/btn_actionbar_back

# Tambah anak
#     [Documentation]    Tambahkan anak untuk mendapatkan push notif
#     #Buka menu
#     Click Element    id=btn_navigation
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']  10s
#     Click Element    xpath=//android.widget.Button[@text='GOT IT']
#     Wait Until Element Is Visible    id=tv_nav_profile
#     Element Name Should Be    id=tv_nav_profile    ${PROFILE_NAME}
#     Click Element    id=tv_nav_child
#     Wait Until Element Is Visible    id=btn_add_child
#     Element Name Should Be    id=btn_add_child    Tambah Anak
#     Click Element    id=btn_add_child
#     # disini input untuk edit tanggal
#     Wait Until Element Is Visible    android:id/pickers   10s
#     Swipe    280    945    280    715   # +1 tanggal from NOW
#     Sleep    1s
#     Swipe    280    945    280    715   # +1 tanggal from NOW
#     Sleep    1s
#     Swipe    280    945    280    715   # +1 tanggal from NOW
#     Sleep    1s
#     Swipe    280    945    280    715   # +1 tanggal from NOW
#     Sleep    1s
#     Swipe    280    945    280    715   # +1 tanggal from NOW
#     # disini input untuk edit bulan
#     Sleep    1s
#     Swipe    525    945    525    715   # +1 bulan from NOW
#     Sleep    1s
#     Swipe    525    945    525    715   # +1 bulan from NOW
#     # disini input untuk edit tahun
#     Sleep    1s
#     Swipe    768    945    768    715   # +1 tahun from NOW
#     #Buka Menu Tambah Anak
#     Wait Until Element Is Visible    id=tv_title
#     Element Name Should Be    id=tv_title    Tambah Anak
#
#     #Input Detail Anak
#     Input Text    id=et_child_name    BabyNotif1

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
