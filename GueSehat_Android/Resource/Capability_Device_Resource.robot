*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Library    String

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION_EMULATOR}    6.0
${PLATFORM_VERSION_REAL}       7.1.1
${DEVICE_NAME_EMULATOR}    192.168.56.101:5555
${DEVICE_NAME_REAL}      192.168.90.222:5555  #49ffe4aa
${APP}            com.guesehat.android
${APP_PACKAGE}    com.guesehat.android
${APP_ACTIVITY}    com.guesehat.android.feature.splashscreen.SplashScreenActivity
${APP_ACTIVITY_SPLASH}  com.guesehat.android.feature.splashscreen.SplashScreenActivity
${APP2}            com.android.chrome
${APP_PACKAGE2}    com.android.chrome
${APP_ACTIVITY2}    com.google.android.apps.chrome.Main
${APP_ACTIVITY_SPLASH2}  com.google.android.apps.chrome.Main
${timeout}    50s
${email_login}    hendy.satriawan@gmail.com
${pass_login}     1234567
${first_name}   Hendy
${last_name}    GUE
${email_regis}    hendygue11@yopmail.com
${pass_regis}   guegue
${email_fb}   fetzune@gmail.com
${pass_fb}    Myfreedom
${name_login_fb}    AAM JAMILAH
${name_login_google}    Aan Andrian
${timeout}    20s
${yangdicari}     Makanan Sehat


*** Keywords ***
Buka Apps GS Real Device
  Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_REAL}    deviceName=${DEVICE_NAME_REAL}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}   noReset=False

Splash Screen GS
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/iv_onboard')]   ${timeout}
  #swipe sampai muncul halaman mulai
  ${wheight}    Get Window Height
  ${wwidth}   Get Window Width
  Log    ${wheight}
  Log    ${wwidth}
  ${subx}   Evaluate    ${wwidth} - 30
  ${suby}   Evaluate    ${wheight} / 2
  ${subx2}    Evaluate    ${wwidth} - ${subx}
  Log    ${subx}
  Log    ${suby}
  Log    ${subx2}
  #swipe kesamping untuk dapat tips yang diinginkan
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_get_started')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subx}    ${suby}    ${subx2}    ${suby}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_get_started')]
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_get_started')]   ${timeout}
  Hide Keyboard
  #sudah masuk ke dalam halaman login & register

klik cari
  Click A Point    x=665    y=1216
