*** Setting ***
Library    AppiumLibrary
Library    BuiltIn

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION_EMULATOR}    6.0
${PLATFORM_VERSION_REAL}       6.0.1
${DEVICE_NAME_EMULATOR}    192.168.56.101:5555
${DEVICE_NAME_REAL}      192.168.1.100:5555  #13d92d1
${APP}            com.temanbumil.android
${APP_PACKAGE}    com.temanbumil.android
${APP_ACTIVITY}    com.temanbumil.android.authentication.AuthenticationActivity
${APP_ACTIVITY_SPLASH}  com.temanbumil.android.splash.SplashActivity
${APP_ACTIVITY_HOME}  com.temanbumil.android.home.HomeActivity
#Keycodes
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
${cari}   84
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
*** Keywords ***
Buka apps temanbumil real device
  Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_REAL}    deviceName=${DEVICE_NAME_REAL}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}   noReset=False

Buka apps temanbumil emulator
  Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_EMULATOR}    deviceName=${DEVICE_NAME_EMULATOR}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}
