*** Setting ***

Library    AppiumLibrary
Library    BuiltIn

Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Permission_Resource.robot

*** Keywords ***
Register D2D
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Welcome!')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
  #masuk ke halaman register
  Wait Until Page Contains Element    //android.widget.TextView[contains(@content-desc,'textRegister')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@content-desc,'textRegister')]
  #input data Register
   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Input Your Data')]   ${timeout}
   Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'REGISTER')]    ${timeout}
   Wait Until Page Contains Element    //android.widget.EditText[contains(@text,'name must be appropriate with IDI')]   ${timeout}
   Input Text    //android.widget.EditText[contains(@content-desc,'inputFullName')]    ${fullname_regis}
   Hide Keyboard
   Wait Until Page Contains Element    //android.widget.EditText[contains(@content-desc,'inputNPAId')]   ${timeout}
   Input Text    //android.widget.EditText[contains(@content-desc,'inputNPAId')]    ${npaidi_regis}
   Hide Keyboard
   Wait Until Page Contains Element    //android.widget.EditText[contains(@content-desc,'inputEmail')]    ${timeout}
   Input Text    //android.widget.EditText[contains(@content-desc,'inputEmail')]    ${email_regis}
   Hide Keyboard
   Wait Until Page Contains Element    //android.widget.EditText[contains(@content-desc,'inputPassword')]    ${timeout}
   Input Text    //android.widget.EditText[contains(@content-desc,'inputPassword')]    ${pass_regis}
   Hide Keyboard
   Wait Until Page Contains Element    //android.widget.EditText[contains(@content-desc,'inputConfirmationPassword')]   ${timeout}
   Tap    //android.widget.EditText[contains(@content-desc,'inputConfirmationPassword')]
   Input Text    //android.widget.EditText[contains(@content-desc,'inputConfirmationPassword')]    ${pass_regis}
   Hide Keyboard
   #klik tombol login -> harus 2x
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-regis}   Convert To String    ${lebars}
  ${x2-regis}   Convert To String    ${lebars}
  ${y1-regis}   Convert To String    ${tinggis}
  ${y2-regis}   Evaluate    ${tinggis} - 500
  #swipe sampai dapat tombol Register
   : FOR    ${loopCount}    IN RANGE    0    20
   \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]
   \    Run Keyword If    ${el}    Exit For Loop
   \    Swipe    ${x1-regis}    ${y1-regis}    ${x2-regis}    ${y2-regis}
   \    ${loopCount}    Set Variable    ${loopCount}+1
    #klik tombol register
    #klik tombol register -> harus 2x
    : FOR    ${loopCount}    IN RANGE    0    20
    \    ${el}    Run Keyword And Return Status    Page Should Not Contain Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]
    \    Run Keyword If    ${el}    Exit For Loop
    \    Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonRegister')]
    \    ${loopCount}    Set Variable    ${loopCount}+1
    Sleep    1s
    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Email Verification')]   ${timeout}
    #kembali ke halaman login
    Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.TextView
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.TextView
    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Welcome!')]   ${timeout}
    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
    #aktivasi akun dengan membuka email
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
    Press Keycode    66
    Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'login')]   ${timeout}
    Clear Text    //android.widget.EditText[contains(@resource-id,'login')]
    Input Text    //android.widget.EditText[contains(@resource-id,'login')]    ${email_regis}
    Hide Keyboard
    Sleep    1s
    Press Keycode    66
    Wait Until Page Contains Element    //android.view.View[contains(@text,'today')]    ${timeout}
    Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'m1')]    ${timeout}
    #buka email
    Click Element    //android.view.View[contains(@resource-id,'m1')]
    Wait Until Page Contains Element    //android.view.View[contains(@text,'D2D Verification')]   ${timeout}
    Wait Until Page Contains Element    //android.view.View[contains(@text,'ACTIVATE')]   ${timeout}
    Sleep    2s
    #klik aktivasi
    Click Element    //android.view.View[contains(@text,'ACTIVATE')]
    ${deeplink}   Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Buka dengan')]   10s
    Run Keyword If    ${deeplink}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/com.android.internal.widget.ViewPager/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.ImageView
    Wait Until Page Contains Element    //android.widget.ScrollView[contains(@resource-id,'com.android.chrome:id/modal_dialog_scroll_view')]    ${timeout}
    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.android.chrome:id/message')][@text='Selamat, akun anda telah terverifikasi.']    ${timeout}
    #back & hapus semua email yopmail
    Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.android.chrome:id/tab_switcher_button')]    ${timeout}
    Click Element    //android.widget.ImageButton[contains(@resource-id,'com.android.chrome:id/tab_switcher_button')]
    Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.android.chrome:id/new_tab_button')]    ${timeout}
    Click Element    //android.widget.Button[contains(@resource-id,'com.android.chrome:id/new_tab_button')]
    #cek halaman awal google
    #masuk yopmail
    Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.android.chrome:id/search_box_text')]   5s
    Click Element    //android.widget.EditText[contains(@resource-id,'com.android.chrome:id/search_box_text')]
    Input Text    //android.widget.EditText[contains(@resource-id,'com.android.chrome:id/url_bar')]    yopmail.com
    Press Keycode    66
    Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'login')]   ${timeout}
    Clear Text    //android.widget.EditText[contains(@resource-id,'login')]
    Input Text    //android.widget.EditText[contains(@resource-id,'login')]    ${email_regis}
    Hide Keyboard
    Sleep    1s
    Press Keycode    66
    Wait Until Page Contains Element    //android.view.View[contains(@text,'today')]    ${timeout}
    Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'m1')]    ${timeout}
    Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'rethome')]   ${timeout}
    Click Element    //android.view.View[contains(@resource-id,'rethome')]
    Sleep    2s
    Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'e0')]    ${timeout}
    Click Element    //android.view.View[contains(@resource-id,'e0')]
    Sleep    2s
    Click Element    //android.view.View[contains(@text,'javascript:suppr_sel();')]
    Sleep    1s
    Press Keycode    187  #recent apps
    Sleep    1s
    Press Keycode    187  #recent apps
    Sleep    1s
    #kembali ke D2D - halaman login
    Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.TextView
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.TextView
    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Welcome!')]   ${timeout}
    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'LOGIN')]    ${timeout}
    Sleep    ${timeout}
