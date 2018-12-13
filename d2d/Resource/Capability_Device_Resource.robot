*** Setting ***
Library    AppiumLibrary
Library    BuiltIn

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION_EMULATOR}    6.0
${PLATFORM_VERSION_REAL}       7.1.1
${DEVICE_NAME_EMULATOR}    192.168.56.101:5555
${DEVICE_NAME_REAL}      192.168.90.222:5555  #49ffe4aa
${APP}            com.d2d.android
${APP_PACKAGE}    com.d2d.android
${APP_ACTIVITY}    com.d2d.android.MainActivity
${APP_ACTIVITY_SPLASH}  com.d2d.android.MainActivity
${APP2}            com.android.chrome
${APP_PACKAGE2}    com.android.chrome
${APP_ACTIVITY2}    com.google.android.apps.chrome.Main
${APP_ACTIVITY_SPLASH2}  com.google.android.apps.chrome.Main
############################################################
${timeout}    50s
${email_login}    ptgue.devbravo@gmail.com
${pass_login}     guecuti
${fullname_regis}   Hendy GUE
${npaidi_regis}    11121317
${email_regis}    hendygue1@yopmail.com
${pass_regis}   guegue
${pass_regis_update}    1234567
${email_fb}     fetzune@gmail.com        #hendy.fb@yopmail.com
${pass_fb}    Myfreedom
${name_login_fb}    Hendy FB
${IDI_login_fb}   11121319
${email_google}   sampah.hendy5@gmail.com
${name_login_google}    Hendy Gmail
${IDI_login_google}   11121318
${judul_feed_jurnal}    Myasthenic Crisis In Pregnancy
${judul_feed_Guideline}   Pediatric Heart Failure
${judul_feed_Event}   The 50th CONGRESS OF THE INTERNATIONAL SOCIETY OF PAEDIATRIC ONCOLOGY
${judul_feed_Video}   Renin Angiotensin Aldosterone System

*** Keywords ***
Buka Apps D2D Real Device
  Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_REAL}    deviceName=${DEVICE_NAME_REAL}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}   noReset=False
