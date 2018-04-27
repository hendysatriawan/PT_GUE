*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
*** Variables ***
#Data valid
${NAMA_DEPAN}   yuni
${NAMA_BELAKANG}    sinta
${EMAIL_VALID}    yun@yopmail.com
${EMAIL_VALID_2}    yun2@yopmail.com
${PASS_VALID}   12345678
#Data Invalid
${EMAIL_INVALID_1}    yun@yopmail
${EMAIL_INVALID_2}    yunyopmail.com
${EMAIL_ALREADY}      ben1@yopmail.com
${PASS_INVALID}   12345

*** Keywords ***
Register Valid  #tanpa Verifikasi
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    ${APP}:id/btn_next
  Click Element    ${APP}:id/btn_next
  Click Element    ${APP}:id/btn_skip
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    id=text    100s
  Click Element    xpath=//android.widget.TextView[@text='REGISTER']
  Element Name Should Be    id=btn_Register    REGISTER
  #Input Name, Email, Password & Click Login
  Input Text    id=et_first_name    ${NAMA_DEPAN}
  Input Text    id=et_last_name    ${NAMA_BELAKANG}
  Input Text    id=et_email    ${EMAIL_VALID}
  Input Password    id=pv_pwd    ${PASS_VALID}
  #Hide Keyboard
  Swipe    658    1258    728    615
  Click Element    id=cb_tos
  Click Element    id=btn_Register
  #cek masuk ke halaman verifikasi
  Wait Until Element Is Visible    ${APP}:id/btn_verify    100s

Register Email Sudah Terdaftar
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    xpath=//android.widget.Button[@text='SKIP']
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    id=text    100s
  Click Element    xpath=//android.widget.TextView[@text='REGISTER']
  Element Name Should Be    id=btn_Register    REGISTER
  #Input Name, Email, Password & Click Login
  Input Text    id=et_first_name    ${NAMA_DEPAN}
  Input Text    id=et_last_name    ${NAMA_BELAKANG}
  Input Text    id=et_email    ${EMAIL_ALREADY}
  Input Password    id=pv_pwd    ${PASS_VALID}
  #Hide Keyboard
  Swipe    658    1258    728    615
  Click Element    id=cb_tos
  Click Element    id=btn_Register
  Wait Until Element Is Visible    ${APP}:id/snackbar_text    100s
  Element Text Should Be    ${APP}:id/snackbar_text    Email anda sudah terdaftar, silakan login

Register Email Tidak Valid 1
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    xpath=//android.widget.Button[@text='SKIP']
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    id=text    100s
  Click Element    xpath=//android.widget.TextView[@text='REGISTER']
  Element Name Should Be    id=btn_Register    REGISTER
  #Input Name, Email, Password & Click Login
  Input Text    id=et_first_name    ${NAMA_DEPAN}
  Input Text    id=et_last_name    ${NAMA_BELAKANG}
  Input Text    id=et_email    ${EMAIL_INVALID_1}
  Input Password    id=pv_pwd    ${PASS_VALID}
  #Hide Keyboard
  Swipe    658    1258    728    615
  Click Element    id=cb_tos
  Click Element    id=btn_Register
  Wait Until Element Is Visible    ${APP}:id/snackbar_text    100s
  Element Text Should Be    ${APP}:id/snackbar_text    The Email field must contain a valid email address.

Register Email Tidak Valid 2
    Buka apps temanbumil emulator
    #Buka apps temanbumil real device
    Sleep    2s
    #permission handle
    Permission_Phone
    #skip splash screen
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
    Click Element    xpath=//android.widget.Button[@text='SKIP']
    #Wait Apps Open & Open Register Page
    Wait Until Element Is Visible    id=text    100s
    Click Element    xpath=//android.widget.TextView[@text='REGISTER']
    Element Name Should Be    id=btn_Register    REGISTER
    #Input Name, Email, Password & Click Login
    Input Text    id=et_first_name    ${NAMA_DEPAN}
    Input Text    id=et_last_name    ${NAMA_BELAKANG}
    Input Text    id=et_email    ${EMAIL_INVALID_1}
    Input Password    id=pv_pwd    ${PASS_VALID}
    #Hide Keyboard
    Swipe    658    1258    728    615
    Click Element    id=cb_tos
    Click Element    id=btn_Register
    Wait Until Element Is Visible    ${APP}:id/snackbar_text    100s
    Element Text Should Be    ${APP}:id/snackbar_text   The Email field must contain a valid email address.

Register Password Tidak Valid
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    xpath=//android.widget.Button[@text='SKIP']
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    id=text    100s
  Click Element    xpath=//android.widget.TextView[@text='REGISTER']
  Element Name Should Be    id=btn_Register    REGISTER
  #Input Name, Email, Password & Click Login
  Input Text    id=et_first_name    ${NAMA_DEPAN}
  Input Text    id=et_last_name    ${NAMA_BELAKANG}
  Input Text    id=et_email    ${EMAIL_VALID}
  Input Password    id=pv_pwd    ${PASS_INVALID}
  #Hide Keyboard
  Swipe    658    1258    728    615
  Click Element    id=cb_tos
  Click Element    id=btn_Register
  Wait Until Element Is Visible    ${APP}:id/textinput_error    100s
  Element Text Should Be    ${APP}:id/textinput_error    Minimal 6 huruf

Register Tidak Pilih Setuju
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    xpath=//android.widget.Button[@text='SKIP']
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    id=text    100s
  Click Element    xpath=//android.widget.TextView[@text='REGISTER']
  Element Name Should Be    id=btn_Register    REGISTER
  #Input Name, Email, Password & Click Login
  Input Text    id=et_first_name    ${NAMA_DEPAN}
  Input Text    id=et_last_name    ${NAMA_BELAKANG}
  Input Text    id=et_email    ${EMAIL_VALID_2}
  Input Password    id=pv_pwd    ${PASS_VALID}
  #Hide Keyboard
  Swipe    658    1258    728    615
  Click Element    id=btn_Register
  #cek masuk ke halaman verifikasi
  Wait Until Element Is Visible    ${APP}:id/snackbar_text    100s
  Element Text Should Be    ${APP}:id/snackbar_text    Silakan setujui syarat dan ketentuan

Register Via Facebook
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    xpath=//android.widget.Button[@text='SKIP']
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    id=text    100s
  Click Element    xpath=//android.widget.TextView[@text='REGISTER']
  Element Name Should Be    id=btn_Register    REGISTER
  #Login Via Facebook
  Swipe    658    1258    728    615
  Click Element    ${APP}:id/btn_facebook

Register Via Google
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    xpath=//android.widget.Button[@text='SKIP']
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    id=text    100s
  Click Element    xpath=//android.widget.TextView[@text='REGISTER']
  Element Name Should Be    id=btn_Register    REGISTER
  #Login Via Google
  Swipe    658    1258    728    615
  Click Element    ${APP}:id/btn_google

Register No Input Mandatory field
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    ${APP}:id/btn_next
  Click Element    ${APP}:id/btn_next
  Click Element    ${APP}:id/btn_skip
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    id=text    100s
  Click Element    xpath=//android.widget.TextView[@text='REGISTER']
  Element Name Should Be    id=btn_Register    REGISTER
  #Input Name, Email, Password & Click Login
  Input Text    id=et_first_name    ${NAMA_DEPAN}
  Input Text    id=et_last_name    ${NAMA_BELAKANG}
  Input Password    id=pv_pwd    ${PASS_VALID}
  #Hide Keyboard
  Swipe    658    1258    728    615
  Click Element    id=cb_tos
  Click Element    id=btn_Register


Masuk Register Via Login
  Buka apps temanbumil emulator
  #Buka apps temanbumil real device
  Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    xpath=//android.widget.Button[@text='SKIP']  100s
  Click Element    xpath=//android.widget.Button[@text='SKIP']
  #pilih rgister link
  Click Element    ${APP}:id/tv_register
  Wait Until Element Is Visible    ${APP}:id/tv_tos   100s
  Element Text Should Be    ${APP}:id/tv_tos    Saya setuju dengan Syarat dan Ketentuan
