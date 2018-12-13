*** Setting ***
Library    AppiumLibrary
Library    BuiltIn

Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
*** Variables ***
#Data valid
${EMAIL_LOGIN_VALID}   aniula2@yopmail.com
${PASSWORD_LOGIN_VALID}   123456
#Data Invalid
${EMAIL_LOGIN_INVALID}    aniul2@yopmail.com
${PASSWORD_LOGIN_INVALID}    1234568
#Email Forgot Password
${EMAIL_FORGOT_VALID}   aniula2@yopmail.com
${EMAIL_FORGOT_INVALID}   aniula200@yopmail.com
#New Password for forgot PASSWORD
${PASSWORD_NEW}   1234567
${PASSWORD_CONFIRM}     1234567
${klik}   Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')]
*** Keywords ***
Login Valid
  # Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    2s
  #permission handle
  Permission_Phone
  ${force}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'android:id/button2')]
  Run Keyword If    ${force}    Force_Update
  ...   ELSE   Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]    #tunggu tombol skip
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s    #tunggu tombol skip
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]    #click tombol skip
  #cek halaman login
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]    100s
  #Input Data Login
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_LOGIN_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]
  Input Password    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]    ${PASSWORD_LOGIN_VALID}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]   100s
  Page Should Not Contain Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]
  #cek berhasil Login & ke question page
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_content')]   100s
  # Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_content')]    Silakan tambah data anak Mums terlebih dahulu
  Instagram Handle
  Promo_handle

Login Invalid Email
  # Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s    #tunggu tombol skip
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]    #click tombol skip
  #cek halaman login
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]    100s
  #Input Data Login
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_LOGIN_INVALID}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]  100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]
  Input Password    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]    ${PASSWORD_LOGIN_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    100s
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    Email tidak ditemukan, periksa kembali penulisan email Anda

Login Invalid Password
  # Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s    #tunggu tombol skip
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]    #click tombol skip
  #cek halaman login
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]    100s
  #Input Data Login
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_LOGIN_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]  100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]
  Input Password    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]    ${PASSWORD_LOGIN_INVALID}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    100s
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    Login gagal. Silakan periksa password kamu!

Login Via Register
  # Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s    #tunggu tombol skip
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]    #click tombol skip
  #Wait Apps Open & Open Login Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    100s
  Click Element    //android.widget.TextView[contains(@text,'REGISTER')]
  Element Name Should Be    //android.widget.TextView[contains(@text,'REGISTER')]    REGISTER
  #pilih login link
  Swipe    658    1258    728    615
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_login')]
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]  100s
  Element Should Be Enabled    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]

Lupa Password Valid Email  #belum fix
  # Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s    #tunggu tombol skip
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]    #click tombol skip
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_lupasandi')]    100s
  #pilih lupa password
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_lupasandi')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]   100s
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_forgot')]    Forgot Password
  #input email untuk lupa PASSWORD
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_FORGOT_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_reset')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_reset')]
  #masuk halaman input otp
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_verify')]   100s
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

Lupa Password Invalid Email   #belum fix
  # Buka apps temanbumil emulator
   Buka apps temanbumil real device
  # Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s    #tunggu tombol skip
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]    #click tombol skip
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_lupasandi')]    100s
  #pilih lupa password
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_lupasandi')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]   100s
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_forgot')]    Forgot Password
  #input email untuk lupa PASSWORD
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_FORGOT_INVALID}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_reset')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_reset')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    100s
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    Permintaan tidak ditemukan, silakan periksa kembali.

Login After Reset Password
  #cek halaman login
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]    100s
  #Input Data Login
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_FORGOT_VALID}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]
  Input Password    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_password')]    ${PASSWORD_NEW}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_login')]
  #cek homepage
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]   100s

Promo_handle
  ${cekpromo}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/LL')]
  Run Keyword If    '${cekpromo}' == 'False'    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='GOT IT']
  Run Keyword If    '${cekpromo}' == 'False'    Log    Tidak ada Promo
  ...   ELSE IF   '${cekpromo}' == 'True'   Run Keywords    Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btnSubmit')]
  ...   AND   Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btnSubmit')][@text='SIMPAN']
  ...   AND   Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/close')]
  ...   AND   Log    Promo muncul namun di close
  ...   AND   Press Keycode    3   #home
  ...   AND   Sleep    1s
  ...   AND   Press Keycode    187  #recent apps
  ...   AND   Press Keycode    187  #recent apps
  ...   AND   Sleep    1s

Instagram Handle
  ${cekIG}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/imgSosMed')]
  Run Keyword If    ${cekIG}    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/close')]
