*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
Resource    ../Resource/Question_Resource.robot


*** Keywords ***
Kembali ke Homepage Dari Artikel Slider
  #klik back untuk kembali ke homepage
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     100s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Page Contains Element    100s xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView   100s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Element Is Visible    ${APP}:id/txt_mother   100s

Kembali ke Homepage Dari Checklist
  #kembali ke homepage
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     100s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Element Is Visible    ${APP}:id/txt_mother   100s

Kembali ke Homepage Dari Tips
  #back to homepage
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     100s
  Click Element    ${APP}:id/btn_actionbar_back
  Page Should Contain Element    ${APP}:id/title_tips

Kembali ke Homepage Dari Artikel Terkait
  #back ke homepage
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     100s
  Click Element    ${APP}:id/btn_actionbar_back
  Page Should Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #kembali ke halaman atas
  Sleep    2s
  Swipe    406    250    406    1350
  Swipe    406    250    406    1350
  Swipe    406    250    406    1350
  Swipe    406    250    406    1350
  Sleep    2s
  Element Name Should Be    ${APP}:id/txt_mother    Jika Mums sudah hamil klik di sini

Homepage Program Hamil Artikel Slider 1
  #tunggu sampai halaman homepage terload sempurna
  Wait Until Element Is Visible xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.ImageView    100s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.TextView[2]
  #tunggu sampai artikel terload sempurna
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Sleep    2s
  Element Should Be Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #buka artikel paling bawah -- tunggu halaman sampai terload sempurna
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s


Homepage Program Hamil Artikel Slider 2
    #tunggu sampai halaman homepage terload sempurna
    Swipe    1020    530    160    540          #swipe ke kanan
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.ImageView    100s
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.TextView[2]
    #tunggu sampai artikel terload sempurna
    Wait Until Element Is Visible    ${APP}:id/tv_title   100s
    Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
    #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Swipe    406    1350    406    150
    Sleep    2s
    Element Should Be Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    #buka artikel paling bawah -- tunggu halaman sampai terload sempurna
    Wait Until Element Is Visible    ${APP}:id/tv_title   100s
    Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s


Homepage Program Hamil Checklist
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.ImageView    100s
  Swipe    406    1350    406    210      #swipe sampai dapat tombol see more
  Sleep    2s
  #pilih halaman checklist
  Click Element    ${APP}:id/btn_see_more
  Wait Until Element Is Visible    ${APP}:id/txt_title    100s
  #check
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #uncheck
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox


Homepage Program Hamil Tips
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Swipe    406    1350    406    135          #swipe sampai dapat tips
  Sleep    2s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout
  #pilih halaman tips
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #swipe halaman tips sampai halaman bawah
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Swipe    406    1350    406    150
  Sleep    2s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s

Homepage Program Hamil Artikel
  Page Should Contain Element    ${APP}:id/title_tips
  Swipe    406    1350    406    135          #swipe sampai dapat artikel terkait
  #pilih artikel terkait
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #tunggu sampai artikel terload sempurna
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView

Homepage Program Hamil Ubah Status Hamil
  Element Should Be Visible    ${APP}:id/txt_mother
  Click Element    ${APP}:id/txt_mother
  #ubah status menjadi hamil
  Wait Until Element Is Visible    ${APP}:id/tvDescription    100s
  Element Text Should Be    ${APP}:id/tvDescription    Selamat atas Kehamilan Mums, silakan klik Ya untuk melanjutkan
  #pilih Yes
  Click Element    ${APP}:id/txt_positive
  #pilih Kehamilan
  Wait Until Element Is Visible    ${APP}:id/tv_q_main    100s
  Element Text Should Be    ${APP}:id/tv_q_main    Apakah Mums sudah dinyatakan hamil oleh dokter?
  #pilih sudah
  Click Element    ${APP}:id/btn_q_main_done
  Wait Until Element Is Visible    ${APP}:id/tv_q_date    100s
  Element Text Should Be    ${APP}:id/tv_q_date    Isi perkiraan due date Mums
  #pilih tanggal due date
  #input tahun
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  Press Keycode    ${2}
  Press Keycode    ${0}
  Press Keycode    ${1}
  Press Keycode    ${8}
  Press Keycode    ${enter}
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Press Keycode    ${O}
  Press Keycode    ${K}
  Press Keycode    ${T}
  Press Keycode    ${enter}
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Press Keycode    ${1}
  Press Keycode    ${4}
  Press Keycode    ${enter}
  Sleep    2s
  Click Element    ${APP}:id/btn_q_date_choose
  #tunggu homepage hamil
  Wait Until Element Is Visible    ${APP}:id/btn_negative   100s
  Element Text Should Be    ${APP}:id/tv_title    Selamat atas kehamilan Mums!
  Click Element    ${APP}:id/btn_negative
  Coachmark Got It
