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
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView    100s
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
  Page Should Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #kembali ke halaman atas
  Sleep    2s
  Swipe    350    260    350    1190
  Swipe    350    260    350    1190
  Swipe    350    260    350    1190
  Swipe    350    260    350    1190
  Swipe    350    260    350    1190
  Sleep    2s
  Element Name Should Be    ${APP}:id/txt_mother    Jika Mums sudah hamil klik di sini

Kembali ke Homepage Sedang Hamil Dari Checklist
  #kembali ke homepage
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     100s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/img_fetus   100s

Kembali ke Homepage Sedang Hamil Dari Info Janin
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     100s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/img_fetus   100s

Kembali ke Homepage Sedang Hamil Dari Info Mums
  Wait Until Element Is Visible    ${APP}:id/btn_close
  Click Element    ${APP}:id/btn_close
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/img_fetus   100s

Kembali ke Homepage Sedang Hamil Dari Tips
  #back to homepage
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     100s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout   100s

Kembali ke Homepage Sedang Hamil Dari Artikel Terkait
  #back ke homepage
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     100s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView   100s

Kembali ke Homepage Tumbuh Kembang Dari Checklist
  #kembali ke homepage
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     100s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/image_baby   100s

Kembali ke Homepage Tumbuh Kembang Dari Grafik
  #kembali ke hompage
  Sleep    3s
  Press Keycode    ${back}
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    10s
  # Click Element    ${APP}:id/btn_actionbar_back
  # Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    10s
  # Wait Until Element Is Visible    ${APP}:id/image_baby   100s

Kembali ke Homepage Tumbuh Kembang Dari Album
  #kembali ke homepage
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     10s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    10s
  Wait Until Element Is Visible    ${APP}:id/image_baby   10s

Kembali ke Homepage Tumbuh Kembang Dari Info Baby
  #kembali ke homepage
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     10s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    10s
  Wait Until Element Is Visible    ${APP}:id/image_baby   10s

Kembali ke Homepage Tumbuh Kembang Dari Tips
  #back to homepage
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_back     100s
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  # Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[2]   100s

Kembali ke Homepage Tumbuh Kembang Dari Artikel
  #back to homepage
  Click Element    ${APP}:id/btn_actionbar_back
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView   100s
  #swipe kembali ke homepage atas
  Swipe    335    300    335    1160
  Swipe    335    300    335    1160
  Swipe    335    300    335    1160

Homepage Program Hamil Artikel Slider 1
  #tunggu sampai halaman homepage terload sempurna
  # Wait Until Element Is Visible xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.ImageView    100s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.TextView[2]
  #tunggu sampai artikel terload sempurna
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    2s
  Element Should Be Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #buka artikel paling bawah -- tunggu halaman sampai terload sempurna
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s


Homepage Program Hamil Artikel Slider 2
    #tunggu sampai halaman homepage terload sempurna
    Swipe    610    330    45    330          #swipe ke kanan
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.ImageView    100s
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.ImageView
    #tunggu sampai artikel terload sempurna
    Wait Until Element Is Visible    ${APP}:id/tv_title   100s
    Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
    #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Swipe    335    1160    335    250
    Sleep    2s
    Element Should Be Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    #buka artikel paling bawah -- tunggu halaman sampai terload sempurna
    Wait Until Element Is Visible    ${APP}:id/tv_title   100s
    Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s


Homepage Program Hamil Checklist
  Swipe    320    1180    320    860      #swipe sampai dapat tombol see more
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
  Swipe    320    1200    320    605          #swipe sampai dapat tips
  Sleep    2s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView    100s
  #pilih halaman tips
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #swipe halaman tips sampai halaman bawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    2s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s

Homepage Program Hamil Tips Slide
  Sleep    2s
  Swipe    560    1150    28    1190          #swipe ke kanan
  Swipe    560    1150    28    1190          #swipe ke kanan
  Swipe    560    1150    28    1190          #swipe ke kanan
  Swipe    560    1150    28    1190          #swipe ke kanan
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView    100s
  #pilih halaman tips
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #swipe halaman tips sampai halaman bawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    2s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s

Homepage Program Hamil Artikel
  Page Should Contain Element    ${APP}:id/title_tips
  Swipe    360    1200    360    230          #swipe sampai dapat artikel terkait
  #pilih artikel terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
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

Homepage Progam Hamil Checklist Notifikasi
  Page Should Contain Element    ${APP}:id/btn_actionbar_notification
  Click Element    ${APP}:id/btn_actionbar_notification
  Page Should Not Contain Element    ${APP}:id/btn_actionbar_notification
  #click checklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #unchecklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox

Homepage Sedang Hamil Checklist Notifikasi
  Page Should Contain Element    ${APP}:id/btn_actionbar_notification
  Click Element    ${APP}:id/btn_actionbar_notification
  Page Should Not Contain Element    ${APP}:id/btn_actionbar_notification
  #click checklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #unchecklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox

Homepage Sedang Hamil Image Fetus
  Click Element    ${APP}:id/img_fetus
  Wait Until Element Is Visible    ${APP}:id/btn_indicator_3
  Page Should Contain Text    Perkembangan Janin
  Page Should Contain Element    ${APP}:id/sw
  #swipe info janin
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400

Homepage Sedang Hamil Info Baby
  Click Element    ${APP}:id/txt_info
  Wait Until Element Is Visible    ${APP}:id/btn_indicator_3
  Page Should Contain Text    Perkembangan Janin
  Page Should Contain Element    ${APP}:id/sw
  #swipe info janin
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400

Homepage Sedang Hamil Bayi Ideal
  Swipe    330    1200    330    750
  Page Should Contain Text    BABY IDEAL
  Click Element    ${APP}:id/baby_ideal_card
  Wait Until Element Is Visible    ${APP}:id/btn_indicator_3
  Page Should Contain Text    Perkembangan Janin
  Page Should Contain Element    ${APP}:id/sw
  #swipe info janin
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400

Homepage Sedang Hamil info Mums
  Swipe    330    1200    330    300
  Page Should Contain Text    MUMS
  Click Element    ${APP}:id/card_mother
  Wait Until Element Is Visible    ${APP}:id/txt_content
  Page Should Contain Text    Perubahan Mums
  Swipe    330    1200    330    200

Homepage Sedang Hamil Checklist
  #swipe sampai dapat tombol see more
  Swipe    330    1200    330    300
  Swipe    330    1200    330    300
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


Homepage Sedang Hamil Tips
  #swipe sampai dapat tips
  Swipe    330    1200    330    480
  Swipe    330    1200    330    480
  Swipe    330    1200    330    480
  Sleep    2s
  #pilih halaman tips
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #swipe halaman tips sampai halaman bawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    2s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s

Homepage Sedang Hamil Tips Slide
  Sleep    2s
  Swipe    670    1140    70    1140          #swipe ke kanan
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView    100s
  #pilih halaman tips
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #swipe halaman tips sampai halaman bawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    2s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s

Homepage Sedang Hamil Artikel
  Page Should Contain Element    ${APP}:id/title_tips
  Swipe    360    1200    360    230          #swipe sampai dapat artikel terkait
  #pilih artikel terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #tunggu sampai artikel terload sempurna
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView
  #swipe artikel kebawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    2s

Homepage Tumbuh Kembang Checklist Notifikasi
  Page Should Contain Element    ${APP}:id/btn_actionbar_notification
  Click Element    ${APP}:id/btn_actionbar_notification
  Page Should Not Contain Element    ${APP}:id/btn_actionbar_notification
  #click checklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #unchecklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox

Homepage Tumbuh Kembang Add Record
  Click Element    ${APP}:id/btnAddRecord
  #input berat badan
  Wait Until Element Is Visible    ${APP}:id/wheel_view   30s
  Page Should Contain Text    Berat badan si kecil?
  #swipe untuk input Berat
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Click Element    ${APP}:id/btn_next
  #input tinggi bedan sikecil
  Wait Until Element Is Visible    ${APP}:id/wheel_view   30s
  Page Should Contain Text    Tinggi badan si kecil?
  #swipe untuk input tinggi badan
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Click Element    ${APP}:id/btn_next
  #input lingkar kepala sikecil
  Wait Until Element Is Visible    ${APP}:id/wheel_view   30s
  Page Should Contain Text    Lingkar kepala si kecil?
  #swipe untuk input lingkar kepala
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Click Element    ${APP}:id/btn_next
  #hasil save ke grafik
  Wait Until Element Is Visible    ${APP}:id/edit_text_date   100s
  Click Element    ${APP}:id/btn_save
  #muncul pesan informasi berhasil
  Wait Until Element Is Visible    android:id/message   100s
  Page Should Contain Text    Proses berhasil!
  Click Element    android:id/button1
  Sleep    2s

Homepage Tumbuh Kembang Add Album
  Click Element    ${APP}:id/btnAddAlbum
  #input album
  Wait Until Element Is Visible    ${APP}:id/btn_add_album    100s
  Page Should Contain Text    Simpan foto-foto Mums
  #tambah album
  Click Element    ${APP}:id/btn_add_album
  Wait Until Element Is Visible    ${APP}:id/et_album_name    100s
  Tap    ${APP}:id/et_album_name
  Input Text    ${APP}:id/et_album_name    Album Tumbuh Kembang Homepage
  Hide Keyboard
  Click Element    ${APP}:id/action_save
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #buat album sukses, kembali ke halaman album
  Wait Until Element Is Visible    ${APP}:id/layout_upload_photo    100s
  Page Should Contain Text    Album Tumbuh Kembang Homepage
  #ambil foto/gambar
  Click Element    ${APP}:id/layout_upload_photo
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  #back to edit album
  Sleep    3s
  Press Keycode    ${back}
  Sleep    5s
  #Click Text    Album Tumbuh Kembang Homepage
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[1]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Text    Daftar Album
  #tambah foto di detail album
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Click Element    ${APP}:id/layout_inner_container
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  Sleep    3s
  Press Keycode    ${back}
  #edit album
  Click Element    accessibility_id=Opsi lainnya
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]
  Wait Until Element Is Visible    ${APP}:id/et_album_name
  #open camera
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Click Element    ${APP}:id/layout_inner_container
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  Sleep    3s
  Press Keycode    ${back}
  #edit nama album
  Tap    ${APP}:id/et_album_name
  Clear Text    ${APP}:id/et_album_name
  Input Text    ${APP}:id/et_album_name    Album Tumbuh Kembang Homepage-edit
  Hide Keyboard
  Click Element    ${APP}:id/btn_save
  Wait Until Page Contains    Daftar Album
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Text    Album Tumbuh Kembang Homepage-edit
  #hapus album
  Click Element    accessibility_id=Opsi lainnya
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]
  Wait Until Page Contains    Apakah anda yakin ingin menghapus Album?
  Click Element    android:id/button1
  #kembali ke halaman album
  Wait Until Element Is Visible    ${APP}:id/btn_add_album
  Page Should Contain Text    Simpan foto-foto Mums

Homepage Tumbuh Kembang Info Baby
  Swipe    320    1180    320    1000
  Sleep    2s
  Page Should Contain Element    ${APP}:id/txt_ideal
  Click Element    ${APP}:id/txt_ideal
  #masuk halaman info baby
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_indicator_3
  Page Should Contain Text    Tumbuh Kembang
  #swipe info janin
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400
  Swipe    330    1200    330    400

Homepage Tumbuh Kembang Checklist
  Swipe    320    1180    320    200      #swipe sampai dapat tombol see more
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

Homepage Tumbuh Kembang Tips
  #swipe sampai dapat tips
  Swipe    330    1200    330    560
  Swipe    330    1200    330    560
  Swipe    330    1200    330    560
  Sleep    2s
  #pilih halaman tips
  Click A Point   x=170   y=485
  # Click Element    xpath=xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TextView
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #swipe halaman tips sampai halaman bawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    2s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s

Homepage Tumbuh Kembang Tips Slide
  Sleep    2s
  Swipe    320    1180    320    980
  Swipe    600    1150    28    1150          #swipe ke kanan
  Swipe    600    1150    28    1150          #swipe ke kanan
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView    100s
  #pilih halaman tips
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #swipe halaman tips sampai halaman bawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    2s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s

Homepage Tumbuh Kembang Artikel
  Page Should Contain Element    ${APP}:id/title_tips
  Swipe    335    1160    335    250          #swipe sampai dapat artikel terkait
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  #pilih artikel terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #tunggu sampai artikel terload sempurna
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView
  #swipe artikel kebawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    2s
