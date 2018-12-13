*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Login_Resource.robot

*** Keywords ***
Register
  Skip Ke Home
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  #open side menu
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_register')][@text='Register']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvFieldPoint')][@text='Ayo dapatkan Poin Anda']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_register')][@text='Register']
  #masuk ke halaman Register
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Daftar Baru')][@selected='true']    ${timeout}
  Hide Keyboard
  #input data untuk register
  #input nama depan
  Wait Until Page Contains Element    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Nama Depan']     ${timeout}
  Tap    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Nama Depan']
  Input Text    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Nama Depan']    ${first_name}
  Hide Keyboard
  # input nama belakang
  Wait Until Page Contains Element    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Nama Belakang']    ${timeout}
  Tap    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Nama Belakang']
  Input Text    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Nama Belakang']    ${last_name}
  Hide Keyboard
  # input email
  Wait Until Page Contains Element    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Alamat Email']    ${timeout}
  Tap    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Alamat Email']
  Input Text    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Alamat Email']    ${email_regis}
  Hide Keyboard
  # input password
  Wait Until Page Contains Element    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Buat Kata Sandi']    ${timeout}
  Tap    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Buat Kata Sandi']
  Input Text    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Buat Kata Sandi']    ${pass_regis}
  Hide Keyboard
  #checklist newsletter & syarat ketentuan
  Wait Until Page Contains Element    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cb_newsletter')]   ${timeout}
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cb_newsletter')]
  Wait Until Page Contains Element    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cb_tos')]    ${timeout}
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cb_tos')]
  #klik tombol daftar
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-regis}   Convert To String    ${lebars}
  ${x2-regis}   Convert To String    ${lebars}
  ${y1-regis}   Convert To String    ${tinggis}
  ${y2-regis}   Evaluate    ${tinggis} - 700
  #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_register')][@text='DAFTAR']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-regis}    ${y1-regis}    ${x2-regis}    ${y2-regis}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_register')][@text='DAFTAR']
  Sleep    1s
  Wait Until Page Does Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/label')][@text='Please wait']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/snackbar_text')][@text='Pendaftaran berhasil']   ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Masuk')][@selected='true']   ${timeout}

Forgot Password
  Skip Ke Home
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  #open side menu
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_register')][@text='Register']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvFieldPoint')][@text='Ayo dapatkan Poin Anda']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_register')][@text='Register']
  #masuk ke halaman Register
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Daftar Baru')][@selected='true']    ${timeout}
  Hide Keyboard
  #pilih tab lupa password
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lupa Sandi')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Lupa Sandi')]
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_send')][@text='SEND']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lupa Sandi')][@selected='true']   ${timeout}
  # input email
  Wait Until Page Contains Element    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Alamat email']   ${timeout}
  Input Text    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Alamat email']    ${email_regis}
  Hide Keyboard
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_send')][@text='SEND']
  Wait Until Page Does Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/label')][@text='Please wait']    ${timeout}
  Page Should Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/snackbar_text')][@text='The current state of the object in question prevents the requested action from being performed.']
  # verifikasi / reset password
  # ${verif}   Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/snackbar_text')][@text='Info reset password telah dikirimkan ke email anda']   ${timeout}
  # Run Keyword If    '${verif}' == 'false'    Verifikasi akun setelah forgot password
  #  ...   ELSE IF   ${verif}  Reset Password diemail


Verifikasi akun setelah forgot password
  # masuk ke halaman verifikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Verifikasi']    ${timeout}
  Wait Until Page Contains Element    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Email']    ${timeout}
  Input Text    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Email']    ${email_regis}
  Hide Keyboard
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_verif')][@text='VERIFIKASI']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/snackbar_text')][@text='Mohon cek Email Anda untuk melakukan proses verifikasi lebih lanjut']    ${timeout}
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
  Wait Until Page Contains Element    //android.view.View[contains(@text,'Verifikasi Akun')]   ${timeout}
  Wait Until Page Contains Element    //android.view.View[contains(@text,'From: Guesehat <info@guesehat.com>')]   ${timeout}
  Sleep    2s
  # verifikasi email
  Click Element    //android.view.View[contains(@text,'Verifikasi Sekarang')]
  #masuk ke aplikasi gue sehat dengan deeplink
  ${deeplinkgs}   Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/text1')][@text='GueSehat']   ${timeout}
  Run Keyword If    ${deeplinkgs}    Click Element    //android.widget.TextView[contains(@resource-id,'android:id/text1')][@text='GueSehat']
  Wait Until Page Contains Element    //android.view.View[contains(@text,'Terimakasih sudah bergabung di guesehat.com. Akun anda sudah terverifikasi')]   ${timeout}
  #recent apps (kembali ke halaman chrome)
  Press Keycode    187  #recent apps
  Sleep    1s
  Press Keycode    187  #recent apps
  #back & hapus semua email
  Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'rethome')]   ${timeout}
  Click Element    //android.view.View[contains(@resource-id,'rethome')]
  Sleep    2s
  Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'e0')]    ${timeout}
  Click Element    //android.view.View[contains(@resource-id,'e0')]
  Sleep    2s
  Click Element    //android.view.View[contains(@text,'javascript:suppr_sel();')]
  # kembali ke aplikasi GS
  Press Keycode    187  #recent apps
  Sleep    1s
  Press Keycode    187  #recent apps
  # back ke halaman home
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Reset Password diemail
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
  # klik link ganti password
  Wait Until Page Contains Element    //android.view.View[contains(@text,'Lupa Password')]    ${timeout}
  Wait Until Page Contains Element    //android.view.View[contains(@text,'From: Guesehat <info@guesehat.com>')]   ${timeout}
  Wait Until Page Contains Element    //android.view.View[contains(@text,'Ganti Password')]   ${timeout}
  Sleep    2s
  Click Element    //android.view.View[contains(@text,'Ganti Password')][@index='4'][@instance='40']
  Sleep    15s
  #masuk ke halaman input password (aplikasi guesehat)
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.view.View[contains(@text,'Silakan ganti password anda.')]   ${timeout}
  #close tanya dokter
  Wait Until Page Contains Element    //android.widget.EditText[contains(@index,'0')][@NAF='true']    ${timeout}
  Wait Until Page Contains Element    //android.view.View[contains(@text,'KATA SANDI BARU')]    ${timeout}
  ${tanyadok}   Run Keyword And Return Status    Wait Until Page Contains Element    //android.view.View[contains(@text,'X')][@index='0']
  Run Keyword If    ${tanyadok}   Click Element    //android.view.View[contains(@text,'X')][@index='0']
  #input password baru
  Wait Until Page Contains Element    //android.widget.EditText[contains(@index,'0')][@NAF='true']    ${timeout}
  Tap    //android.widget.EditText[contains(@index,'0')][@NAF='true']
  Input Text    //android.widget.EditText[contains(@index,'0')][@NAF='true']    ${pass_regis}
  Press Keycode    66   #enter
  Hide Keyboard
  #input konfirm new password
  Tap    //android.widget.EditText[contains(@index,'0')][@NAF='true']
  Input Text    //android.widget.EditText[contains(@index,'0')][@NAF='true']    ${pass_regis}
  Hide Keyboard
