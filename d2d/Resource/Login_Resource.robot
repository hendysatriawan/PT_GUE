*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Library    DatabaseLibrary

Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot


*** Keywords ***
Login D2D
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Welcome!')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
  #input data login
  Input Text    //android.widget.EditText[contains(@text,'e-mail')]    ${email_login}
  Hide Keyboard
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
  Sleep    1s
  Input Text    //android.widget.EditText[contains(@text,'password')]    ${pass_login}
  Hide Keyboard
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
  Sleep    2s
  # Click Element    //android.widget.TextView[contains(@text,'LOGIN')]
  #klik tombol login -> harus 2x
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]
  \    Run Keyword If    ${el}    Click Element    //android.widget.TextView[contains(@text,'LOGIN')]
  \    Run Keyword If    '${el}' == 'False'    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  #cek halaman feed - berhasil login
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Feeds')]    ${timeout}

Login D2D Dengan Data Facebook
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Welcome!')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
  #masuk ke facebook
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'btnLoginFB')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'btnLoginFB')]
  Wait Until Page Does Not Contain Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/body')]   ${timeout}
  #input user & pass
  Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'u_0_0')]   ${timeout}
  Click Element    //android.widget.EditText[contains(@resource-id,'m_login_email')]
  Input Text    //android.widget.EditText[contains(@resource-id,'m_login_email')]    ${email_fb}
  Hide Keyboard
  Sleep    1s
  Click Element    //android.widget.EditText[contains(@resource-id,'m_login_password')]
  Input Text    //android.widget.EditText[contains(@resource-id,'m_login_password')]    ${pass_fb}
  Hide Keyboard
  Sleep    1s
  Click Element    //android.widget.Button[contains(@resource-id,'u_0_5')]
  #konfirmasi login dengan FB - pilih lanjutkan
  Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'m-future-page-header-title')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'u_0_3')]   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'u_0_3')]
  #input data IDI
  ${inputdata}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Input Your Data')]
  Run Keyword If    '${inputdata}' == 'True'    Run Keywords    Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]    ${timeout}
  ...   AND   Click Element    //android.widget.EditText[contains(@content-desc,'inputFullName')]
  ...   AND   Input Text    //android.widget.EditText[contains(@content-desc,'inputFullName')]    ${name_login_fb}
  ...   AND   Hide Keyboard
  ...   AND   Wait Until Page Contains Element    //android.widget.EditText[contains(@content-desc,'inputNPAId')]   ${timeout}
  ...   AND   Click Element    //android.widget.EditText[contains(@content-desc,'inputNPAId')]
  ...   AND   Input Text    //android.widget.EditText[contains(@content-desc,'inputNPAId')]    ${IDI_login_fb}
  ...   AND   Hide Keyboard
  ...   AND   Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]    ${timeout}
  ...   AND   Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]
  ...   AND   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'SUBSCRIPTION')]   ${timeout}
  ...   AND   Wait Until Page Does Not Contain Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]
  ...   AND   Pilih Subscription
  Run Keyword If    '${inputdata}' == 'False'    Log    Akun sudah terdaftar, berhasil login


Login D2D Dengan Data Google
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Welcome!')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
  #masuk ke google
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'btnLoginGoogle')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'btnLoginGoogle')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.google.android.gms:id/main_title')][@text='Pilih akun']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.google.android.gms:id/subtitle')][@text='untuk melanjutkan ke D2D']    ${timeout}
  #pilih akun google
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.google.android.gms:id/account_name')][@text='sampah.hendy5@gmail.com']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.google.android.gms:id/account_name')][@text='sampah.hendy5@gmail.com']
  #input data IDI
  ${inputdata}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Input Your Data')]
  Run Keyword If    '${inputdata}' == 'True'    Run Keywords    Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]    ${timeout}
  ...   AND   Click Element    //android.widget.EditText[contains(@content-desc,'inputFullName')]
  ...   AND   Input Text    //android.widget.EditText[contains(@content-desc,'inputFullName')]    ${name_login_google}
  ...   AND   Hide Keyboard
  ...   AND   Wait Until Page Contains Element    //android.widget.EditText[contains(@content-desc,'inputNPAId')]   ${timeout}
  ...   AND   Click Element    //android.widget.EditText[contains(@content-desc,'inputNPAId')]
  ...   AND   Input Text    //android.widget.EditText[contains(@content-desc,'inputNPAId')]    ${IDI_login_google}
  ...   AND   Hide Keyboard
  ...   AND   Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]    ${timeout}
  ...   AND   Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]
  ...   AND   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'SUBSCRIPTION')]   ${timeout}
  ...   AND   Wait Until Page Does Not Contain Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]
  ...   AND   Pilih Subscription
  Run Keyword If    '${inputdata}' == 'False'    Log    Akun sudah terdaftar, berhasil login

Pilih Subscription
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'SUBSCRIPTION')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Select Topics')]    ${timeout}
  #pilih spesialis anak
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Spesialis Anak')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Spesialis Anak')]
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'SUBMIT')]

Forgot Password
  Wait Until Page Contains Element    //android.widget.TextView[contains(@content-desc,'forgotPassword')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Welcome!')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
  #masuk ke halaman lupa password
  Click Element    //android.widget.TextView[contains(@content-desc,'forgotPassword')]
  Wait Until Page Contains Element    //android.widget.EditText[contains(@content-desc,'inputEmail')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Forgot Password')]    ${timeout}
  Input Text    //android.widget.EditText[contains(@content-desc,'inputEmail')]    ${email_regis}
  Hide Keyboard
  Sleep    1s
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonSubmit')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonSubmit')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Check Your Email!')]    ${timeout}
  #ambil kode dulu di email
  Press Keycode    3    #keluar ke home
  #buka chrome
  Wait Until Page Contains Element    //android.widget.FrameLayout[contains(@content-desc,'Chrome')]    ${timeout}
  Click Element    //android.widget.FrameLayout[contains(@content-desc,'Chrome')]
  #newtab
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.android.chrome:id/tab_switcher_button')]    ${timeout}
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.android.chrome:id/tab_switcher_button')]
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.android.chrome:id/new_tab_button')]    ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'com.android.chrome:id/new_tab_button')]
  #cek halaman awal google
  #masuk yopmail
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.android.chrome:id/search_box_text')]   5s
  Click Element    //android.widget.EditText[contains(@resource-id,'com.android.chrome:id/search_box_text')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.android.chrome:id/url_bar')]    yopmail.com
  Press Keycode    66   #enter
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'login')]   ${timeout}
  Clear Text    //android.widget.EditText[contains(@resource-id,'login')]
  Input Text    //android.widget.EditText[contains(@resource-id,'login')]    ${email_regis}
  Hide Keyboard
  Sleep    1s
  Press Keycode    66   #enter
  Wait Until Page Contains Element    //android.view.View[contains(@text,'today')]    ${timeout}
  Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'m1')]    ${timeout}
  #buka email
  Click Element    //android.view.View[contains(@resource-id,'m1')]
  Wait Until Page Contains Element    //android.view.View[contains(@text,'D2D Password Change Confirmation')]   ${timeout}
  Wait Until Page Contains Element    //android.view.View[contains(@index,'1')]   ${timeout}
  Sleep    2s
  ${code}   Get Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View[5]/android.view.View/android.view.View[2]
  Log    ${code}
  #back & hapus semua email
  Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'rethome')]   ${timeout}
  Click Element    //android.view.View[contains(@resource-id,'rethome')]
  Sleep    2s
  Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'e0')]    ${timeout}
  Click Element    //android.view.View[contains(@resource-id,'e0')]
  Sleep    2s
  Click Element    //android.view.View[contains(@text,'javascript:suppr_sel();')]
  #kembali ke aplikasi D2D - dengan recent apps
  Sleep    1s
  Press Keycode    187  #recent apps
  Sleep    1s
  Press Keycode    187  #recent apps
  Sleep    1s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Check Your Email!')]    ${timeout}
  Hide Keyboard
  Sleep    1s
  Wait Until Page Contains Element    //android.widget.EditText[contains(@content-desc,'inputCode')]   ${timeout}
  Click Element    //android.widget.EditText[contains(@content-desc,'inputCode')]
  Input Text    //android.widget.EditText[contains(@content-desc,'inputCode')]    ${code}
  Hide Keyboard
  Sleep    1s
  Wait Until Page Contains Element    //android.widget.EditText[contains(@content-desc,'inputPassword')]   ${timeout}
  Click Element    //android.widget.EditText[contains(@content-desc,'inputPassword')]
  Input Text    //android.widget.EditText[contains(@content-desc,'inputPassword')]    ${pass_regis_update}
  Hide Keyboard
  Sleep    1s
   Wait Until Page Contains Element    //android.widget.EditText[contains(@content-desc,'inputConfirmationPassword')]   ${timeout}
   Click Element    //android.widget.EditText[contains(@content-desc,'inputConfirmationPassword')]
   Input Text    //android.widget.EditText[contains(@content-desc,'inputConfirmationPassword')]    ${pass_regis_update}
   Hide Keyboard
   Sleep    1s
   #klik tombol submit
   #klik tombol submit -> harus 2x
   : FOR    ${loopCount}    IN RANGE    0    20
   \    Sleep    1s
   \    ${el}    Run Keyword And Return Status    Page Should Not Contain Element    //android.view.ViewGroup[contains(@content-desc,'buttonSubmit')]
   \    Run Keyword If    ${el}    Exit For Loop
   \    Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonSubmit')]
   \    Sleep    1s
   \    ${loopCount}    Set Variable    ${loopCount}+1
   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Welcome!')]   ${timeout}
   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}

Login D2D After Forgot
   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Welcome!')]   ${timeout}
   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
   #input data login
   Input Text    //android.widget.EditText[contains(@text,'e-mail')]    ${email_regis}
   Hide Keyboard
   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
   Sleep    1s
   Input Text    //android.widget.EditText[contains(@text,'password')]    ${pass_regis_update}
   Hide Keyboard
   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
   Sleep    2s
   # Click Element    //android.widget.TextView[contains(@text,'LOGIN')]
   #klik tombol login -> harus 2x
   : FOR    ${loopCount}    IN RANGE    0    20
   \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]
   \    Run Keyword If    ${el}    Click Element    //android.widget.TextView[contains(@text,'LOGIN')]
   \    Run Keyword If    '${el}' == 'False'    Exit For Loop
   \    ${loopCount}    Set Variable    ${loopCount}+1
   #cek halaman feed - berhasil login
   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Feeds')]    ${timeout}
