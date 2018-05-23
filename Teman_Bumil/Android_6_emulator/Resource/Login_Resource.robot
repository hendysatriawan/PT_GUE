*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
*** Variables ***
#Data valid
${EMAIL_LOGIN_VALID}   aniula@yopmail.com
${PASSWORD_LOGIN_VALID}   1234567
#Data Invalid
${EMAIL_LOGIN_INVALID}    aniula2@yopmail.com
${PASSWORD_LOGIN_INVALID}    123456
#Email Forgot Password
${EMAIL_FORGOT_VALID}   aniula@yopmail.com
${EMAIL_FORGOT_INVALID}   aniula2@yopmail.com
#New Password for forgot PASSWORD
${PASSWORD_NEW}   1234567
${PASSWORD_CONFIRM}     1234567
*** Keywords ***
Login Valid
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    ${APP}:id/btn_next
  Click Element    ${APP}:id/btn_skip
  #cek halaman login
  Wait Until Element Is Visible    ${APP}:id/btn_login    100s
  #Input Data Login
  Tap    ${APP}:id/et_email
  Input Text    ${APP}:id/et_email    ${EMAIL_LOGIN_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/et_password    100s
  Tap    ${APP}:id/et_password
  Input Password    ${APP}:id/et_password    ${PASSWORD_LOGIN_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_login    100s
  Click Element    ${APP}:id/btn_login
  Wait Until Page Does Not Contain Element    ${APP}:id/btn_login
  Page Should Not Contain Element    ${APP}:id/btn_login

Login Invalid Email
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    ${APP}:id/btn_next
  Click Element    ${APP}:id/btn_skip
  #cek halaman login
  Wait Until Element Is Visible    ${APP}:id/btn_login    100s
  #Input Data Login
  Tap    ${APP}:id/et_email
  Input Text    ${APP}:id/et_email    ${EMAIL_LOGIN_INVALID}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/et_password  100s
  Tap    ${APP}:id/et_password
  Input Password    ${APP}:id/et_password    ${PASSWORD_LOGIN_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_login    100s
  Click Element    ${APP}:id/btn_login
  Wait Until Element Is Visible    ${APP}:id/snackbar_text    100s
  Element Text Should Be    ${APP}:id/snackbar_text    Email tidak ditemukan, periksa kembali penulisan email Anda

Login Invalid Password
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    ${APP}:id/btn_next
  Click Element    ${APP}:id/btn_skip
  #cek halaman login
  Wait Until Element Is Visible    ${APP}:id/btn_login    100s
  #Input Data Login
  Tap    ${APP}:id/et_email
  Input Text    ${APP}:id/et_email    ${EMAIL_LOGIN_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/et_password  100s
  Tap    ${APP}:id/et_password
  Input Password    ${APP}:id/et_password    ${PASSWORD_LOGIN_INVALID}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_login    100s
  Click Element    ${APP}:id/btn_login
  Wait Until Element Is Visible    ${APP}:id/snackbar_text    100s
  Element Text Should Be    ${APP}:id/snackbar_text    Login gagal. Silakan periksa password kamu!

Login Via Register
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    xpath=//android.widget.Button[@text='SKIP']
  #Wait Apps Open & Open Login Page
  Wait Until Element Is Visible    id=text    100s
  Click Element    xpath=//android.widget.TextView[@text='REGISTER']
  Element Name Should Be    id=btn_Register    REGISTER
  #pilih login link
  Swipe    658    1258    728    615
  Click Element    ${APP}:id/tv_login
  Wait Until Element Is Visible    ${APP}:id/title_lupasandi  100s
  Element Text Should Be    ${APP}:id/title_lupasandi    Lupa sandi?

Lupa Password Valid Email
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    xpath=//android.widget.Button[@text='SKIP']
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    ${APP}:id/title_lupasandi    100s
  #pilih lupa password
  Click Element    ${APP}:id/title_lupasandi
  Wait Until Element Is Visible    ${APP}:id/title_forgot   100s
  Element Text Should Be    ${APP}:id/title_forgot    Forgot Password
  #input email untuk lupa PASSWORD
  Tap    ${APP}:id/et_email
  Input Text    ${APP}:id/et_email    ${EMAIL_FORGOT_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_reset    100s
  Click Element    ${APP}:id/btn_reset
  #masuk halaman input otp
  Wait Until Element Is Visible    ${APP}:id/btn_verify   100s
  #lakukan input otp manual dengan cek di email
  #tunggu untuk popup ganti password
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Element Text Should Be    ${APP}:id/btn_positive    Ganti Password
  Click Element    ${APP}:id/btn_positive
  #cek halaman ganti password
  Wait Until Element Is Visible    ${APP}:id/et_password_new   100s
  Element Text Should Be    com.temanbumil.android:id/tv_title    Password
  #input Password baru
  Tap    ${APP}:id/et_password_new
  Input Text    ${APP}:id/et_password_new    ${PASSWORD_NEW}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/et_password_new_confirm    100s
  Tap    ${APP}:id/et_password_new_confirm
  Input Text    ${APP}:id/et_password_new_confirm    ${PASSWORD_NEW}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  Click Element    ${APP}:id/btn_save
  #cek berhasil ubah Password
  Element Should Be Visible    ${APP}:id/btn_actionbar_notification

Lupa Password Invalid Email
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    xpath=//android.widget.Button[@text='SKIP']
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    ${APP}:id/title_lupasandi    100s
  #pilih lupa password
  Click Element    ${APP}:id/title_lupasandi
  Wait Until Element Is Visible    ${APP}:id/title_forgot   100s
  Element Text Should Be    ${APP}:id/title_forgot    Forgot Password
  #input email untuk lupa PASSWORD
  Tap    ${APP}:id/et_email
  Input Text    ${APP}:id/et_email    ${EMAIL_FORGOT_INVALID}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_reset    100s
  Click Element    ${APP}:id/btn_reset
  Wait Until Element Is Visible    ${APP}:id/snackbar_text    100s
  Element Text Should Be    ${APP}:id/snackbar_text    Permintaan tidak ditemukan, silakan periksa kembali.

Login After Reset Password
  #cek halaman login
  Wait Until Element Is Visible    ${APP}:id/btn_login    100s
  #Input Data Login
  Tap    ${APP}:id/et_email
  Input Text    ${APP}:id/et_email    ${EMAIL_FORGOT_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/et_password    100s
  Tap    ${APP}:id/et_password
  Input Password    ${APP}:id/et_password    ${PASSWORD_NEW}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_login    100s
  Click Element    ${APP}:id/btn_login
  #cek homepage
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_notification   100s
