*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
*** Variables ***
#Data valid
${NAMA_DEPAN}   yunia4
${NAMA_BELAKANG}    sintian1
${EMAIL_VALID}    yunsina2@yopmail.com
${EMAIL_VALID_2}    yunsin2@yopmail.com
${PASS_VALID}   123456
#Data Invalid
${EMAIL_INVALID_1}    yun@yopmail
${EMAIL_INVALID_2}    yunyopmail.com
${EMAIL_ALREADY}      ben1@yopmail.com
${PASS_INVALID}   12345

*** Keywords ***
Register Valid  #tanpa Verifikasi
  # Buka apps temanbumil emulator
   Buka apps temanbumil real device
  # Sleep    1s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s    #tunggu tombol skip
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]    #click tombol skip
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    100s
  Click Element    //android.widget.TextView[contains(@text,'REGISTER')]
  Element Should Be Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]
  #Input Name, Email, Password & Click Login
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]   100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]    ${NAMA_DEPAN}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    ${NAMA_BELAKANG}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_VALID}
  Hide Keyboard
  Sleep    1s
  : FOR    ${loopCount}    IN RANGE    0    3
  \    Swipe    358    680    358    310
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  \    log    ${el}
  \    Run Keyword If    ${el}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    ${PASS_VALID}
  Hide Keyboard
  Sleep    1s
  Page Should Contain Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_Register')]
  #cek masuk ke halaman verifikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_verify')]    100s

Register Email Sudah Terdaftar
  # Buka apps temanbumil emulator
   Buka apps temanbumil real device
  # Sleep    2s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    100s
  Click Element    //android.widget.TextView[contains(@text,'REGISTER')]
  Element Should Be Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]
  #Input Name, Email, Password & Click Login
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]   100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]    ${NAMA_DEPAN}
  Hide Keyboard
  Sleep    2s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    ${NAMA_BELAKANG}
  Hide Keyboard
  Sleep    2s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_ALREADY}
  Hide Keyboard
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    3
  \    Swipe    358    680    358    310
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  \    log    ${el}
  \    Run Keyword If    ${el}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    100s
  Sleep    2s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  Sleep    1s
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    ${PASS_VALID}
  Hide Keyboard
  Sleep    3s
  Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
  Sleep    2s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_Register')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    100s
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    Email anda sudah terdaftar, silakan login

Register Email Tidak Valid 1
  # Buka apps temanbumil emulator
   Buka apps temanbumil real device
  # Sleep    1s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    100s
  Click Element    //android.widget.TextView[contains(@text,'REGISTER')]
  Element Should Be Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]
  #Input Name, Email, Password & Click Login
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]   100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]    ${NAMA_DEPAN}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    ${NAMA_BELAKANG}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_INVALID_1}
  Hide Keyboard
  Sleep    1s
  : FOR    ${loopCount}    IN RANGE    0    3
  \    Swipe    358    680    358    310
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  \    log    ${el}
  \    Run Keyword If    ${el}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    100s
  Sleep    2s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    ${PASS_VALID}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_Register')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    100s
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    The Email field must contain a valid email address.

Register Email Tidak Valid 2
    # Buka apps temanbumil emulator
     Buka apps temanbumil real device
    # Sleep    1s
    #permission handle
    Permission_Phone
    #skip splash screen
    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s
    Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]
    #Wait Apps Open & Open Register Page
    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    100s
    Click Element    //android.widget.TextView[contains(@text,'REGISTER')]
    Element Should Be Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]
    #Input Name, Email, Password & Click Login
    Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]   100s
    Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]
    Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]    ${NAMA_DEPAN}
    Hide Keyboard
    Sleep    1s
    Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    100s
    Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]
    Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    ${NAMA_BELAKANG}
    Hide Keyboard
    Sleep    1s
    Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    100s
    Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
    Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_INVALID_2}
    Hide Keyboard
    Sleep    1s
    : FOR    ${loopCount}    IN RANGE    0    3
    \    Swipe    358    680    358    310
    \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
    \    log    ${el}
    \    Run Keyword If    ${el}    Exit For Loop
    \    ${loopCount}    Set Variable    ${loopCount}+1
    Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    100s
    Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
    Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    ${PASS_VALID}
    Hide Keyboard
    Sleep    1s
    Page Should Contain Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
    Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
    Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_Register')]


Register Password Tidak Valid
  # Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    1s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    100s
  Click Element    //android.widget.TextView[contains(@text,'REGISTER')]
  Element Should Be Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]
  #Input Name, Email, Password & Click Login
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]   100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]    ${NAMA_DEPAN}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    ${NAMA_BELAKANG}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_VALID}
  Hide Keyboard
  Sleep    1s
  : FOR    ${loopCount}    IN RANGE    0    3
  \    Swipe    358    680    358    310
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  \    log    ${el}
  \    Run Keyword If    ${el}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    ${PASS_INVALID}
  Hide Keyboard
  Sleep    1s
  Page Should Contain Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_Register')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textinput_error')]    100s
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textinput_error')]    Minimal 6 huruf

Register Tidak Pilih Setuju
  # Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    1s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    100s
  Click Element    //android.widget.TextView[contains(@text,'REGISTER')]
  Element Should Be Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]
  #Input Name, Email, Password & Click Login
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]   100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]    ${NAMA_DEPAN}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    ${NAMA_BELAKANG}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_email')]    ${EMAIL_VALID_2}
  Hide Keyboard
  Sleep    1s
  : FOR    ${loopCount}    IN RANGE    0    3
  \    Swipe    358    680    358    310
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  \    log    ${el}
  \    Run Keyword If    ${el}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    ${PASS_VALID}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_Register')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_Register')]
  #cek alert setuju dengan syarat dan ketentuan
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    100s
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    Silakan setujui syarat dan ketentuan

Register Via Facebook
  # Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    1s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    100s
  Click Element    //android.widget.TextView[contains(@text,'REGISTER')]
  Element Should Be Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]
  #Login Via Facebook
  Sleep    1s
  : FOR    ${loopCount}    IN RANGE    0    3
  \    Swipe    358    680    358    310
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_facebook')]
  \    log    ${el}
  \    Run Keyword If    ${el}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_facebook')]
  #masuk halaman Facebook
  Wait Until Page Does Not Contain Element    android:id/progress   100s
  Wait Until Element Is Visible    m_login_email    10s
  tap    m_login_email
  Input Text    m_login_email    testgan4@gmail.com
  Hide Keyboard
  Tap    m_login_password
  Input Text    m_login_password    testgan1234
  Hide Keyboard
  Sleep    1s
  Click Element    u_0_5
  Wait Until Page Does Not Contain Element    android:id/progress   100s
  Wait Until Element Is Visible    u_0_3   100s
  Click Element    u_0_3
  Wait Until Page Does Not Contain Element    android:id/progress   100s
  Wait Until Element Is Visible    com.temanbumil.android:id/tvHelp

Register Via Google
  #Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    1s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    100s
  Click Element    //android.widget.TextView[contains(@text,'REGISTER')]
  Element Should Be Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]
  #Login Via Google
  Sleep    1s
  : FOR    ${loopCount}    IN RANGE    0    3
  \    Swipe    358    680    358    310
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_google')]
  \    log    ${el}
  \    Run Keyword If    ${el}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_google')]

Register No Input Mandatory field
  # Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    1s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]
  #Wait Apps Open & Open Register Page
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    100s
  Click Element    //android.widget.TextView[contains(@text,'REGISTER')]
  Element Should Be Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]
  #Input Name, Email, Password & Click Login
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]   100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_first_name')]    ${NAMA_DEPAN}
  Hide Keyboard
  Sleep    1s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_last_name')]    ${NAMA_BELAKANG}
  Hide Keyboard
  Sleep    1s
  : FOR    ${loopCount}    IN RANGE    0    3
  \    Swipe    358    680    358    310
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  \    log    ${el}
  \    Run Keyword If    ${el}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/pv_pwd')]    ${PASS_VALID}
  Hide Keyboard
  Sleep    1s
  Page Should Contain Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/cb_tos')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_Register')]

Masuk Register Via Login
  # Buka apps temanbumil emulator
  Buka apps temanbumil real device
  # Sleep    1s
  #permission handle
  Permission_Phone
  #skip splash screen
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]  100s    #tunggu tombol skip
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_skip')]    #click tombol skip
  #pilih rgister link
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'REGISTER')]    #tunggu halaman login
  Click Element    //android.widget.TextView[contains(@text,'REGISTER')]    #click tab register
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]   100s
  Element Should Be Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_register')]
