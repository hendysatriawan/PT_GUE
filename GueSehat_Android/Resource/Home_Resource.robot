*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Login_Resource.robot

*** Keywords ***
Ke Home
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}
  Click Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]

Kembali ke Home dari slide artikel
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman home
  Wait Until Page Contains Element    //android.support.v4.view.ViewPager[contains(@resource-id,'com.guesehat.android:id/vp_slider')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Kembali ke Home via side menu
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]    ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/label_Home')][@text='Beranda']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/label_Home')][@text='Beranda']
  Recent Aplikasi
  Sleep    2s
  # verifikasi halaman home
  Wait Until Page Contains Element    //android.support.v4.view.ViewPager[contains(@resource-id,'com.guesehat.android:id/vp_slider')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Kembali ke Home via Bottom Bar
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}
  Click Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]
  Recent Aplikasi
  Sleep    2s
  # verifikasi halaman home
  Wait Until Page Contains Element    //android.support.v4.view.ViewPager[contains(@resource-id,'com.guesehat.android:id/vp_slider')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Kembali ke Home via button back device
  Sleep    2s
  Press Keycode    4    #back
  Recent Aplikasi
  Sleep    2s
  # verifikasi halaman home
  Wait Until Page Contains Element    //android.support.v4.view.ViewPager[contains(@resource-id,'com.guesehat.android:id/vp_slider')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Kembali ke search dari detail
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman search
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]   ${timeout}

Kembali ke Home dari Search
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/iv_clear_text')][@index='2']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/iv_clear_text')][@index='2']
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']
  # veridikasi halaman home
  Wait Until Page Contains Element    //android.support.v4.view.ViewPager[contains(@resource-id,'com.guesehat.android:id/vp_slider')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Home Slide Artikel
  Wait Until Page Contains Element    //android.support.v4.view.ViewPager[contains(@resource-id,'com.guesehat.android:id/vp_slider')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}
  # check slide artikel & view
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_label')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]    ${timeout}
  ${judulslide}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${judulslide}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulslide}']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulslide}']
  Sleep    15s

Dokter Slide Direktori
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_category')]    ${timeout}
  #ambil kordinat element
  ${dirslide}    Get Element Location    //android.widget.LinearLayout[contains(@resource-id,'com.guesehat.android:id/container')][@index='3']
  ${dirslide}    Convert To String    ${dirslide}
  ${remove}   Remove String    ${dirslide}    {  '   y   x    :   }
  Log    ${remove}
  ${subsx}   Fetch From Right    ${remove}    ,
  ${subsx}   Fetch From Left    ${subsx}    .0
  ${subsy}   Fetch From Left    ${remove}    ,
  ${subsy}  Fetch From Left    ${subsy}    .0
  ${subsx2}  Fetch From Right    ${remove}    ,
  ${subsx2}   Fetch From Left    ${subsx2}    .0
  Log    ${subsx}
  Log    ${subsy}
  # #ubah value untuk digunakan untuk swipe
  ${subsx2}    Convert To Integer    ${subsx2}
  ${subsx2}   Evaluate    ${subsx2} - 500
  #swipe kesamping untuk dapat tips yang diinginkan
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Dokter']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Dokter']
  #masuk ke direktori dokter
  Permission_Location
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Dokter']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')]   ${timeout}


Rumah sakit slide Direktori
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_category')]    ${timeout}
  #ambil kordinat element
  ${dirslide}    Get Element Location    //android.widget.LinearLayout[contains(@resource-id,'com.guesehat.android:id/container')][@index='3']
  ${dirslide}    Convert To String    ${dirslide}
  ${remove}   Remove String    ${dirslide}    {  '   y   x    :   }
  Log    ${remove}
  ${subsx}   Fetch From Right    ${remove}    ,
  ${subsx}   Fetch From Left    ${subsx}    .0
  ${subsy}   Fetch From Left    ${remove}    ,
  ${subsy}  Fetch From Left    ${subsy}    .0
  ${subsx2}  Fetch From Right    ${remove}    ,
  ${subsx2}   Fetch From Left    ${subsx2}    .0
  Log    ${subsx}
  Log    ${subsy}
  # #ubah value untuk digunakan untuk swipe
  ${subsx2}    Convert To Integer    ${subsx2}
  ${subsx2}   Evaluate    ${subsx2} - 500
  #swipe kesamping untuk dapat tips yang diinginkan
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Rumah Sakit']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Rumah Sakit']
  #masuk ke direktori dokter
  Permission_Location
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Rumah Sakit']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')]   ${timeout}

Klinik slide Direktori
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_category')]    ${timeout}
  #ambil kordinat element
  ${dirslide}    Get Element Location    //android.widget.LinearLayout[contains(@resource-id,'com.guesehat.android:id/container')][@index='3']
  ${dirslide}    Convert To String    ${dirslide}
  ${remove}   Remove String    ${dirslide}    {  '   y   x    :   }
  Log    ${remove}
  ${subsx}   Fetch From Right    ${remove}    ,
  ${subsx}   Fetch From Left    ${subsx}    .0
  ${subsy}   Fetch From Left    ${remove}    ,
  ${subsy}  Fetch From Left    ${subsy}    .0
  ${subsx2}  Fetch From Right    ${remove}    ,
  ${subsx2}   Fetch From Left    ${subsx2}    .0
  Log    ${subsx}
  Log    ${subsy}
  # #ubah value untuk digunakan untuk swipe
  ${subsx2}    Convert To Integer    ${subsx2}
  ${subsx2}   Evaluate    ${subsx2} - 500
  #swipe kesamping untuk dapat tips yang diinginkan
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Klinik']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Klinik']
  #masuk ke direktori dokter
  Permission_Location
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Klinik']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_insurance')]   ${timeout}

Gym & Health Club slide Direktori
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_category')]    ${timeout}
  #ambil kordinat element
  ${dirslide}    Get Element Location    //android.widget.LinearLayout[contains(@resource-id,'com.guesehat.android:id/container')][@index='3']
  ${dirslide}    Convert To String    ${dirslide}
  ${remove}   Remove String    ${dirslide}    {  '   y   x    :   }
  Log    ${remove}
  ${subsx}   Fetch From Right    ${remove}    ,
  ${subsx}   Fetch From Left    ${subsx}    .0
  ${subsy}   Fetch From Left    ${remove}    ,
  ${subsy}  Fetch From Left    ${subsy}    .0
  ${subsx2}  Fetch From Right    ${remove}    ,
  ${subsx2}   Fetch From Left    ${subsx2}    .0
  Log    ${subsx}
  Log    ${subsy}
  # #ubah value untuk digunakan untuk swipe
  ${subsx2}    Convert To Integer    ${subsx2}
  ${subsx2}   Evaluate    ${subsx2} - 500
  #swipe kesamping untuk dapat tips yang diinginkan
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Gym & Health Club']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Gym & Health Club']
  #masuk ke direktori dokter
  Permission_Location
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Gym & Health Club']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')]   ${timeout}

Spa & Massage slide Direktori
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_category')]    ${timeout}
  #ambil kordinat element
  ${dirslide}    Get Element Location    //android.widget.LinearLayout[contains(@resource-id,'com.guesehat.android:id/container')][@index='3']
  ${dirslide}    Convert To String    ${dirslide}
  ${remove}   Remove String    ${dirslide}    {  '   y   x    :   }
  Log    ${remove}
  ${subsx}   Fetch From Right    ${remove}    ,
  ${subsx}   Fetch From Left    ${subsx}    .0
  ${subsy}   Fetch From Left    ${remove}    ,
  ${subsy}  Fetch From Left    ${subsy}    .0
  ${subsx2}  Fetch From Right    ${remove}    ,
  ${subsx2}   Fetch From Left    ${subsx2}    .0
  Log    ${subsx}
  Log    ${subsy}
  # #ubah value untuk digunakan untuk swipe
  ${subsx2}    Convert To Integer    ${subsx2}
  ${subsx2}   Evaluate    ${subsx2} - 500
  #swipe kesamping untuk dapat tips yang diinginkan
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Spa & Massage']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Spa & Massage']
  #masuk ke direktori dokter
  Permission_Location
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Spa & Massage']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')][@text='Spa & Massage']   ${timeout}

Home Artikel kategori Lifestyle
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lifestyle')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Lifestyle']   ${timeout}
  #buka artikel
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Lifestyle']
  Sleep    2s
  Recent Aplikasi
  #masuk ke artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]  ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Lifestyle']

Home Artikel kategori Medis
  ${medis}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Medis')][@selected='true']
  Run Keyword If    '${medis}' == 'False'     Click Element    //android.widget.TextView[contains(@text,'Medis')]
    ...   ELSE IF   ${medis}   Log    Sudah dihalaman artikel Sex & Love
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Medis')][@selected='true']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Medis']   ${timeout}
  # buka artikel
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Medis']
  Sleep    2s
  Recent Aplikasi
  # masuk artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]  ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Medis']

Home Artikel kategori Sex & Love
  ${sexlove}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Sex & Love')][@selected='true']
  Run Keyword If    '${sexlove}' == 'False'  Click Element    //android.widget.TextView[contains(@text,'Sex & Love')]
    ...   ELSE IF   ${sexlove}   Log    Sudah dihalaman artikel Sex & Love
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Sex & Love')][@selected='true']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Sex & Love']   ${timeout}
  # buka artikel
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Sex & Love']
  Sleep    2s
  Recent Aplikasi
  # masuk artikel terkena 17+ (harus login)
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_login')]   ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvWarning')][@text='Halaman yang Kamu tuju berisi konten dewasa. Log in terlebih dahulu dan pastikan usia kamu sudah mencukupi untuk mengaksesnya.']

Home Artikel kategori Wanita
  ${wanita}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Wanita')][@selected='true']
  Run Keyword If    '${wanita}' == 'False'  Click Element    //android.widget.TextView[contains(@text,'Wanita')]
  ...   ELSE IF   ${wanita}   Log    Sudah dihalaman artikel Wanita
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Wanita')][@selected='true']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Wanita']   ${timeout}
  # buka artikel
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Wanita']
  Sleep    2s
  Recent Aplikasi
  # masuk artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]  ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='Wanita']

Search Home Artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]
  # input yang dicari
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]   ${timeout}
  Tap    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]    ${yangdicari}
  klik cari       # dari Capability_Device_Resource
  Hide Keyboard
  # muncul yang dicari
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ARTIKEL')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')][@text='${yangdicari}']    ${timeout}
  # buka semua tab -- Artikel - Forum - Dokter
  # tab artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ARTIKEL')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@index='0']    ${timeout}
  ${judulartikel}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@index='0']
  Log    ${judulartikel}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikel}']
  #masuk ke halaman artikel
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]  ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikel}']

Search Home Forum
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ARTIKEL')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')][@text='${yangdicari}']    ${timeout}
  # buka semua tab -- Artikel - Forum - Dokter
  # tab artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ARTIKEL')][@selected='true']    ${timeout}
  # pilih tab forum
  Click Element    //android.widget.TextView[contains(@text,'FORUM')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'FORUM')][@selected='true']    ${timeout}
  Page Should Not Contain Element    //android.widget.TextView[contains(@resource,'com.guesehat.android:id/tv_category')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@index='0']    ${timeout}
  ${judulforum}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@index='0']
  Log    ${judulforum}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulforum}']
  #masuk ke halaman forum
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Forum']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulforum}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_comment_label')][@text='Komentar']    ${timeout}

Search Home Dokter
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'FORUM')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')][@text='${yangdicari}']    ${timeout}
  # buka semua tab -- Artikel - Forum - Dokter
  # tab artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'DOKTER')]    ${timeout}
  # pilih tab dokter
  Click Element    //android.widget.TextView[contains(@text,'DOKTER')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'DOKTER')][@selected='true']    ${timeout}
  Page Should Not Contain Element    //android.widget.TextView[contains(@resource,'com.guesehat.android:id/tv_category')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_worksplace')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@index='1']    ${timeout}
  ${namadokter}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@index='1']
  Log    ${namadokter}
  ${spesialis}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')]
  Log    ${spesialis}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namadokter}']
  #masuk ke halaman dokter
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Dokter']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namadokter}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='${spesialis}']   ${timeout}
