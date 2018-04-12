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

*** Keywords ***
Buka apps temanbumil real device
  Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_REAL}    deviceName=${DEVICE_NAME_REAL}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}

Buka apps temanbumil emulator
  Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION_EMULATOR}    deviceName=${DEVICE_NAME_EMULATOR}    app=${APP}    appPackage=${APP_PACKAGE}
  ...    appActivity=${APP_ACTIVITY_SPLASH}
