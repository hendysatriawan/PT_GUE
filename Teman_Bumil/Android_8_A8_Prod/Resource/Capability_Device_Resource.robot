*** Setting ***
Library    AppiumLibrary
Library    BuiltIn

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${REMOTE_URL2}     http://localhost:4725/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION_EMULATOR}    6.0
${DEVICE_NAME_EMULATOR}    192.168.56.101:5555
#android 8
${PLATFORM_VERSION_REAL_8}      8.0.0
${DEVICE_NAME_REAL_8}       192.168.115.168:5555
#android 7
${PLATFORM_VERSION_REAL_7}      7.1.1
${DEVICE_NAME_REAL_7}       192.168.90.222:5555  #49ffe4aa
# android 6
${PLATFORM_VERSION_REAL}      8.0.0    #7.1.1
${DEVICE_NAME_REAL}       520010a1c051c4cd    #192.168.90.222:5555  #49ffe4aa
#
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
  Open Application    ${REMOTE_URL2}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_REAL_8}    deviceName=${DEVICE_NAME_REAL_8}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}   noReset=False

Buka apps temanbumil emulator
  Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_EMULATOR}    deviceName=${DEVICE_NAME_EMULATOR}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}

Buka apps temanbumil real 8
  Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_REAL_8}    deviceName=${DEVICE_NAME_REAL_8}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}   noReset=False

Buka apps temanbumil real 7
  Open Application    ${REMOTE_URL2}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_REAL_7}    deviceName=${DEVICE_NAME_REAL_7}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}   noReset=False
