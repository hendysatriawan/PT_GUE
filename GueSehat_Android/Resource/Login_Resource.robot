*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot

*** Variables ***
${emaillogin}   hendy.satriawan@gmail.com
${passlogin}    1234567


*** Keywords ***
Buka semua Tab Halaman Register
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/toolbar_logo')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Daftar Baru')][@selected='true']    ${timeout}
  # masuk ke tab masuk / login
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Masuk')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Masuk')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Masuk')][@selected='true']
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_login')][@text='LOGIN']    ${timeout}
  # masuke ke tab lupa sandi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lupa Sandi')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Lupa Sandi')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lupa Sandi')][@selected='true']
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_send')][@text='SEND']    ${timeout}

Skip Ke Home
  #pilih skip untuk masuk ke home
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_skip')][@text='SKIP']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_skip')][@text='SKIP']
  # cek masuk ke halaman home
  Recent Aplikasi
  ${homegs}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]   7s
  Run Keyword If    '${homegs}' == 'False'    Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]   7s

Login Google
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/toolbar_logo')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Daftar Baru')][@selected='true']    ${timeout}
  # masuk ke tab masuk / login
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Masuk')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Masuk')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Masuk')][@selected='true']
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_login')][@text='LOGIN']    ${timeout}
  # pilih google
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btn_google')]   ${timeout}
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btn_google')]
  Permission_Gallery
  ${google}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btn_google')]   7s
  Run Keyword If    ${google}   Click Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btn_google')]
  #masuk halaman google
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.google.android.gms:id/main_title')][@text='Pilih akun']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.google.android.gms:id/account_name')][@text='sampah.hendy5@gmail.com']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.google.android.gms:id/account_name')][@text='sampah.hendy5@gmail.com']
  # berhasil login & masuk ke halaman HOME
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/label')][@text='Please wait']    ${timeout}
  Sleep    7s
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}
  # cek sudah berhasil login
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  Wait Until Page Does Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_logged_in')][@text='Login']   ${timeout}

Login Facebook
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/toolbar_logo')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Daftar Baru')][@selected='true']    ${timeout}
  # masuk ke tab masuk / login
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Masuk')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Masuk')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Masuk')][@selected='true']
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_login')][@text='LOGIN']    ${timeout}
  # pilih facebook
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btn_facebook')]   ${timeout}
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btn_facebook')]
  Permission_Storage
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btn_facebook')]
  #masuk ke halaman facebook
  Wait Until Page Contains Element    //android.view.View[contains(@text,'facebook')]   ${timeout}
  Wait Until Page Contains Element    //android.view.View[contains(@text,'Masuk ke akun Facebook Anda untuk terhubung dengan GueSehat')]    ${timeout}
  #input email
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'m_login_email')]   ${timeout}
  Input Text    //android.widget.EditText[contains(@resource-id,'m_login_email')]    ${email_fb}
  Hide Keyboard
  # input password
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'m_login_password')]    ${timeout}
  Input Text    //android.widget.EditText[contains(@resource-id,'m_login_password')]    ${pass_fb}
  Hide Keyboard
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'u_0_5')]   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'u_0_5')]
  #confirm login
  Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'m-future-page-header-title')][@text='Confirm login']    ${timeout}
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'u_0_3')][@text='Continue']   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'u_0_3')][@text='Continue']
  # berhasil login & masuk ke halaman HOME
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/label')][@text='Please wait']    ${timeout}
  Sleep    7s
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}
  # cek sudah berhasil login
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  Wait Until Page Does Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_logged_in')][@text='Login']   ${timeout}

Login Via Side Menu
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  #pilih login
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_logged_in')][@text='Login']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_logged_in')][@text='Login']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Masuk')]    ${timeout}
  #masuk ke tab masuk
  Click Element    //android.widget.TextView[contains(@text,'Masuk')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Masuk')][@selected='true']    ${timeout}
  Hide Keyboard
  Input Text    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_input')]    ${emaillogin}
  Hide Keyboard
  Input Password    //TextInputLayout[contains(@resource-id,'com.guesehat.android:id/til_input')][@text='Password']    ${passlogin}
  Hide Keyboard
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_login')]   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_login')]
  Recent Aplikasi
  # login sukses, masuk ke halaman home
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}
