*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Library    String
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
Resource    ../Resource/Question_Resource.robot

*** Variables ***

${fertil_home_artikel_1}  Ini Pertanda Masa Subur
${fertil_home_artikel_2}

*** Keywords ***
Kembali ke Homepage Dari Artikel Slider
  #klik back untuk kembali ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/btn_actionbar_back     5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    ${APP}:id/btn_actionbar_back
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  # Click Element    ${APP}:id/btn_actionbar_back
  # Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@instance,'14')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@instance,'2')]    100s

Kembali ke Homepage Dari Artikel Slider 2
  #klik back untuk kembali ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/btn_actionbar_back     5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    ${APP}:id/btn_actionbar_back
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@instance,'3')]    100s

Kembali ke Homepage Dari Checklist
  #kembali ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/btn_actionbar_back     5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    ${APP}:id/btn_actionbar_back
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@instance,'2')]    100s

Kembali ke Homepage Dari Tips
  #back to homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/btn_actionbar_back     5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    ${APP}:id/btn_actionbar_back
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_tips')]

Kembali ke Homepage Dari Artikel Terkait
  #back ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/btn_actionbar_back     5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    ${APP}:id/btn_actionbar_back
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - ${tinggiy}
  ${x1-home}   Convert To String    ${lebars}
  ${x2-home}   Convert To String    ${lebars}
  ${y1-home}   Convert To String    ${tinggis}
  ${y1-home}   Evaluate    ${tinggis} + 300
  ${y2-home}   Evaluate    ${y1-home} + 500
  Log    ${x1-home}
  Log    ${x2-home}
  Log    ${y1-home}
  Log    ${y2-home}
  #Scroll artikel sampai atas (sampai dapat tombol ubah status sudah hamil)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_mother')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_mother')]

Kembali ke Homepage Sedang Hamil Dari Info Janin
  #kembali ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']

Kembali ke Homepage Sedang Hamil Dari Baby Ideal
  #back ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']

Kembali ke Homepage Sedang Hamil Dari Info Mums
  #back ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']

Kembali ke Homepage Sedang Hamil Dari Checklist
  #back ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']


Kembali ke Homepage Sedang Hamil Dari Tips
  #kembali ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    '${back}' == 'False'   Exit For Loop
  \    Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_tips')]
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout

Kembali ke Homepage Sedang Hamil Dari Artikel Terkait
  #back ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/btn_actionbar_back     5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    ${APP}:id/btn_actionbar_back
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - ${tinggiy}
  ${x1-home}   Convert To String    ${lebars}
  ${x2-home}   Convert To String    ${lebars}
  ${y1-home}   Convert To String    ${tinggis}
  ${y1-home}   Evaluate    ${tinggis} + 300
  ${y2-home}   Evaluate    ${y1-home} + 500
  Log    ${x1-home}
  Log    ${x2-home}
  Log    ${y1-home}
  Log    ${y2-home}
  #Scroll artikel sampai atas (sampai dapat tombol ubah status sudah hamil)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']

Kembali ke Homepage Newborn Minggu Ini
  Wait Until Element Is Visible    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/this_week_indicator')]    100s
  Click Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/this_week_indicator')]
  #cek homepage newborn
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD RECORD')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']    100s
  Page Should Not Contain Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/this_week_indicator')]

Kembali ke Homepage Sedang Hamil Minggu Ini
  Wait Until Element Is Visible    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/this_week_indicator')]    100s
  Click Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/this_week_indicator')]
  #cek halaman homepage minggu ini
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]   100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']

Kembali ke Homepage Newborn dari Add Record
  #kembali ke homepage new born
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  #cek halaman homepage
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'android:id/progress')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  #cek homepage newborn
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD RECORD')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']

Kembali ke Homepage Newborn dari Add Album
  #kembali ke homepage new born
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  #cek halaman homepage
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'android:id/progress')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  #cek homepage newborn
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD RECORD')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']

Kembali ke Homepage Newborn dari info tumbuh kembang
  #kembali ke homepage new born
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  #cek halaman homepage
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'android:id/progress')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  #cek homepage newborn
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD RECORD')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']

Kembali ke Homepage Newborn Dari Checklist
  #kembali ke homepage new born
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  #cek halaman homepage
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'android:id/progress')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  #cek homepage newborn
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD RECORD')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']

Kembali ke Homepage Newborn Dari Tips
  #kembali ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    '${back}' == 'False'   Exit For Loop
  \    Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  #cek halaman homepage - langsung show tips
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'android:id/progress')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_tips')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_tips')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']

Kembali ke Homepage Newborn Dari Artikel Terkait
  #kembali ke homepage new born
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]      5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  #cek halaman homepage - langsung show artikel yang dipilih
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'android:id/progress')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='Menyusui']   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']


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
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/btn_actionbar_back     5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    ${APP}:id/btn_actionbar_back
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    10s
  Wait Until Element Is Visible    ${APP}:id/image_baby   10s

Kembali ke Homepage Tumbuh Kembang Dari Info Baby
  #kembali ke homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/btn_actionbar_back     5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    ${APP}:id/btn_actionbar_back
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    10s
  Wait Until Element Is Visible    ${APP}:id/image_baby   10s

Kembali ke Homepage Tumbuh Kembang Dari Tips
  #back to homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/btn_actionbar_back     5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    ${APP}:id/btn_actionbar_back
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  # Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[2]   100s

Kembali ke Homepage Tumbuh Kembang Dari Artikel
  #back to homepage
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${back}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/btn_actionbar_back     5s
  \    Run Keyword If    ${back}    Exit For Loop
  \    Click Element    ${APP}:id/btn_actionbar_back
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView   100s
  #swipe kembali ke homepage atas
  Swipe    335    300    335    1160
  Swipe    335    300    335    1160
  Swipe    335    300    335    1160

Homepage Program Hamil Artikel Slider 1
  #tunggu sampai halaman homepage terload sempurna
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@instance,'2')]   20s
  Click Element   //android.widget.ImageView[contains(@instance,'2')]
  #tunggu sampai artikel terload sempurna
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]   100s
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-artikel}   Convert To String    ${lebars}
  ${x2-artikel}   Convert To String    ${lebars}
  ${y1-artikel}   Convert To String    ${tinggis}
  ${y2-artikel}   Evaluate    ${tinggis} - 700
  #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.LinearLayout[contains(@instance,'14')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  # Click Element    //android.widget.LinearLayout[contains(@instance,'14')]
  #buka artikel paling bawah -- tunggu halaman sampai terload sempurna
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]    100s
  # Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]   100s


Homepage Program Hamil Artikel Slider 2
    #tunggu sampai halaman homepage terload sempurna
    Wait Until Page Contains Element    //android.widget.ImageView[contains(@instance,'3')]   20s
    #ambil kordinat element
    ${artikel}    Get Element Location    //android.widget.ImageView[contains(@instance,'3')]
    ${artikel}    Convert To String    ${artikel}
    ${remove}   Remove String    ${artikel}    {  '   y   x    :   }
    Log    ${remove}
    ${subsx}   Fetch From Right    ${remove}    ,
    ${subsx}   Fetch From Left    ${subsx}    .0
    ${subsy}   Fetch From Left    ${remove}    ,
    ${subsy}  Fetch From Left    ${subsy}    .0
    ${subsx2}  Fetch From Right    ${remove}    ,
    ${subsx2}   Fetch From Left    ${subsx2}    .0
    Log    ${subsx}
    Log    ${subsy}
    ${subsx3}    Convert To Integer    ${subsx2}
    ${subsx3}   Evaluate    ${subsx2} - 500
    Swipe    ${subsx}    ${subsy}    ${subsx3}    ${subsy}
    Click Element    //android.widget.ImageView[contains(@instance,'3')]
    #tunggu sampai artikel terload sempurna
    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]   100s
    Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
    ${lebarx}    Get Window Width
    ${tinggiy}   Get Window Height
    ${lebarx}   Convert To Integer    ${lebarx}
    ${tinggiy}  Convert To Integer    ${tinggiy}
    ${lebars}   Evaluate    ${lebarx}/2
    ${tinggis}    Evaluate    ${tinggiy} - 200
    ${x1-artikel2}   Convert To String    ${lebars}
    ${x2-artikel2}   Convert To String    ${lebars}
    ${y1-artikel2}   Convert To String    ${tinggis}
    ${y2-artikel2}   Evaluate    ${tinggis} - 700
    #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
    : FOR    ${loopCount}    IN RANGE    0    20
    \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.LinearLayout[contains(@instance,'17')]
    \    Run Keyword If    ${el}    Exit For Loop
    \    Swipe    ${x1-artikel2}    ${y1-artikel2}    ${x2-artikel2}    ${y2-artikel2}
    \    ${loopCount}    Set Variable    ${loopCount}+1
    Sleep    1s
    # Click Element    //android.widget.LinearLayout[contains(@instance,'17')]
    # #buka artikel paling bawah -- tunggu halaman sampai terload sempurna
    # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]    100s
    # Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]   100s


Homepage Program Hamil Checklist
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@instance,'3')]    100s
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-check}   Convert To String    ${lebars}
  ${x2-check}   Convert To String    ${lebars}
  ${y1-check}   Convert To String    ${tinggis}
  ${y2-check}   Evaluate    ${tinggis} - 500
  #Scroll artikel sampai dapat see more
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_see_more')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_see_more')]
  #pilih halaman checklist
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='0']    100s
  # ${collapsecheck}  Run Keyword And Return Status    Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox  100s
  # Run Keyword If    ${collapsecheck}    Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  #check
  Sleep    1s
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='0']
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='1']
  # uncheck
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='0']
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='1']

Homepage Program Hamil Tips
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@instance,'3')]    100s
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-tips}   Convert To String    ${lebars}
  ${x2-tips}   Convert To String    ${lebars}
  ${y1-tips}   Convert To String    ${tinggis}
  ${y2-tips}   Evaluate    ${tinggis} - 500
  #Scroll artikel sampai dapat tips
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips}    ${y1-tips}    ${x2-tips}    ${y2-tips}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Element Should Be Enabled    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_tips')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_description')][@text='Bolehkah Bercinta saat Haid?']
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_author')]    100s
  Wait Until Page Contains Element    //android.webkit.WebView[contains(@instance,'1')]
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_content')][@text='Trik Hamil Anak Laki-laki']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips}    ${y1-tips}    ${x2-tips}    ${y2-tips}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #pilih tips terkait
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_content')][@text='Trik Hamil Anak Laki-laki']
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_author')]
  Wait Until Page Contains Element    //android.webkit.WebView[contains(@instance,'1')]    100s

Homepage Program Hamil Tips Slide
  #tunggu sampai halaman homepage terload sempurna
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]  5s
  #ambil kordinat element
  ${tipsslide}    Get Element Location    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
  ${tipsslide}    Convert To String    ${tipsslide}
  ${remove}   Remove String    ${tipsslide}    {  '   y   x    :   }
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Kesalahan Umum Penggunaan Testpack')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'Kesalahan Umum Penggunaan Testpack')]
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until element is visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-tips2}   Convert To String    ${lebars}
  ${x2-tips2}   Convert To String    ${lebars}
  ${y1-tips2}   Convert To String    ${tinggis}
  ${y2-tips2}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips2}    ${y1-tips2}    ${x2-tips2}    ${y2-tips2}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s

Homepage Program Hamil Artikel
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-artikel}   Convert To String    ${lebars}
  ${x2-artikel}   Convert To String    ${lebars}
  ${y1-artikel}   Convert To String    ${tinggis}
  ${y2-artikel}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='${fertil_home_artikel_1}']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #pilih artikel terkait
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='${fertil_home_artikel_1}']
  #tunggu sampai artikel terload sempurna
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until page contains element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView

Program Hamil Ubah Status Sedang Hamil
  Program Hamil Menu Home
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_mother')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_mother')]
  #pilih ya untuk melanjutkan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tvDescription')]   100s
  Page Should Contain Text    Selamat atas Kehamilan Mums, silakan klik Ya untuk melanjutkan
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_positive')]
  #masuk question page
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Apakah Mums sudah dinyatakan hamil oleh dokter?')]    100s
  #pilih belum hamil & garis 2
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_main_no')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Apa hasil testpack Mums?')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_testpack_line2')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_q_hpht')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_hpht_choose')]
  #pilih tema
  ${pilihtema}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_q_theme')][@text='Pilih tema yang paling menarik untuk Mums!']
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.CheckedTextView[contains(@text,'Nutrisi & Kebugaran')]
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.CheckedTextView[contains(@text,'Fesyen & Kecantikan')]
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.CheckedTextView[contains(@text,'Persalinan & Postpartum')]
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.CheckedTextView[contains(@text,'Kesehatan')]
  #klik tombol submit
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_theme_choose')]
  ...   ELSE    Log    Tidak Pilih Tema, Tema Sudah Dipilih Sebelumnya
  #masuk ke halaman homepage sedang hamil
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  # cek halaman selamat & pilih tombol tutup
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_negative')]  100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Selamat atas kehamilan Mums!')]
  Page Should Contain Text    Nikmati kehamilan nyaman bersama Teman Bumil
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_negative')]
  #handle coachmark
  Coachmark Got It
  #tampil homepage sedang hamil
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']

Sedang Hamil Homepage Janin 3D
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]    100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]
  #masuk ke halaman perkembangan janin
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='BIJI PISANG']    100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_cover')]
  #swipe kebawah
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-info}   Convert To String    ${lebars}
  ${x2-info}   Convert To String    ${lebars}
  ${y1-info}   Convert To String    ${tinggis}
  ${y2-info}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='BIJI PISANG']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-info}    ${y1-info}    ${x2-info}    ${y2-info}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='BIJI PISANG']
  #loncat info ke week 3
  Click Element    //android.widget.TextView[contains(@text,'3')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='CHIA SEED']


Sedang Hamil Homepage Info
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-info}   Convert To String    ${lebars}
  ${x2-info}   Convert To String    ${lebars}
  ${y1-info}   Convert To String    ${tinggis}
  ${y2-info}   Evaluate    ${tinggis} - 500
  #cari info
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textIdeal')][@text='BABY IDEAL']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-info}    ${y1-info}    ${x2-info}    ${y2-info}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_info')]
  #masuk ke halaman perkembangan janin
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='BIJI PISANG']    100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_cover')]
  #swipe kebawah
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='BIJI PISANG']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-info}    ${y1-info}    ${x2-info}    ${y2-info}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='BIJI PISANG']
  #loncat info ke week 3
  Click Element    //android.widget.TextView[contains(@text,'3')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='CHIA SEED']

Sedang Hamil Homepage Baby Ideal
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]    100s
  #swipe kebawah
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-baby}   Convert To String    ${lebars}
  ${x2-baby}   Convert To String    ${lebars}
  ${y1-baby}   Convert To String    ${tinggis}
  ${y2-baby}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.FrameLayout[contains(@resource-id,'com.temanbumil.android:id/baby_ideal_card')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-baby}    ${y1-baby}    ${x2-baby}    ${y2-baby}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.FrameLayout[contains(@resource-id,'com.temanbumil.android:id/baby_ideal_card')]
  Sleep    2s
  #masuk ke halaman baby ideal
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-info}   Convert To String    ${lebars}
  ${x2-info}   Convert To String    ${lebars}
  ${y1-info}   Convert To String    ${tinggis}
  ${y2-info}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='BIJI PISANG']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-info}    ${y1-info}    ${x2-info}    ${y2-info}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='BIJI PISANG']
  #loncat info ke week 3
  Click Element    //android.widget.TextView[contains(@text,'3')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='CHIA SEED']


Sedang Hamil Homepage Info Mums
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]    100s
  #swipe kebawah
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-mums}   Convert To String    ${lebars}
  ${x2-mums}   Convert To String    ${lebars}
  ${y1-mums}   Convert To String    ${tinggis}
  ${y2-mums}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_mother')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-mums}    ${y1-mums}    ${x2-mums}    ${y2-mums}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_mother')]
  #masuk ke halaman info mums
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Perubahan Mums')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_content')]


Sedang Hamil Homepage Checklist
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]    100s
  #swipe kebawah
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-check}   Convert To String    ${lebars}
  ${x2-check}   Convert To String    ${lebars}
  ${y1-check}   Convert To String    ${tinggis}
  ${y2-check}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_see_more')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #click checklist
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='0']
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='1']
  #klik see more untuk masuk ke halaman checklist
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_see_more')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_see_more')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='Pemeriksaan Laboratorium']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']
  #click unchecklist
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='0']
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='1']


Sedang Hamil Homepage Tips
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]    100s
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-tips}   Convert To String    ${lebars}
  ${x2-tips}   Convert To String    ${lebars}
  ${y1-tips}   Convert To String    ${tinggis}
  ${y2-tips}   Evaluate    ${tinggis} - 500
  #Scroll artikel sampai dapat tips
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips}    ${y1-tips}    ${x2-tips}    ${y2-tips}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Element Should Be Enabled    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_tips')]
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_author')]    100s
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.ImageView
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips}    ${y1-tips}    ${x2-tips}    ${y2-tips}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.ImageView
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_author')]
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]    100s
  #kembali ke tips sebelumnya
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]     100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]

Sedang Hamil Homepage Tips Slide
  #tunggu sampai halaman homepage terload sempurna
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]  5s
  #ambil kordinat element
  ${tipsslide}    Get Element Location    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
  ${tipsslide}    Convert To String    ${tipsslide}
  ${remove}   Remove String    ${tipsslide}    {  '   y   x    :   }
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Cukupi Kebutuhan Zat Besi')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'Cukupi Kebutuhan Zat Besi')]
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until element is visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-tips2}   Convert To String    ${lebars}
  ${x2-tips2}   Convert To String    ${lebars}
  ${y1-tips2}   Convert To String    ${tinggis}
  ${y2-tips2}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips2}    ${y1-tips2}    ${x2-tips2}    ${y2-tips2}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #kembali ke tips sebelumnya
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]     100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]

Sedang Hamil Homepage Artikel Terkait
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-artikel}   Convert To String    ${lebars}
  ${x2-artikel}   Convert To String    ${lebars}
  ${y1-artikel}   Convert To String    ${tinggis}
  ${y2-artikel}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #pilih artikel terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #tunggu sampai artikel terload sempurna
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until page contains element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView

Sedang Hamil Homepage Minggu Ini
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']
  #swipe ke week 15 (swipe left)
  #tunggu sampai halaman homepage terload sempurna
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='3 Mgg']  100s
  #ambil kordinat element
  ${weeklide}    Get Element Location    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='3 Mgg']
  ${weeklide}    Convert To String    ${weeklide}
  ${remove}   Remove String    ${weeklide}    {  '   y   x    :   }
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='15 Mgg']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='15 Mgg']
  #cek halaman week 15
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'15 Mgg')][@selected='true']
  Page Should Contain Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/this_week_indicator')]

Homepage New Born Foto Baby
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]
  #Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Gallery    #allow permission Galery
  Permission_Camera     #allow permission camera
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Uploading Image...')]   100s
  # Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'android:id/progress')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  #cek homepage newborn
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD RECORD')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']    100s

Homepage New Born Add Record
  Click Element    //android.widget.FrameLayout[contains(@resource-id,'com.temanbumil.android:id/btnAddRecord')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Grafik Anak')]   100s
  Element Text Should Be    //android.widget.TextView[contains(@text,'Grafik Anak')]    Grafik Anak
  # input data berat
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berat badan si kecil?')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #input data tinggi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Tinggi badan si kecil?')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #input data lingkar kepala
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lingkar kepala si kecil?')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_date')]    100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='4,4']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='53,7']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='36,9']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_weight')][@text='Gizi baik']
  #simpan ke grafik
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  #input berhasil
  Wait Until Page Contains Element    //android.widget.FrameLayout[contains(@resource-id,'android:id/content')]   100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'android:id/message')]   100s
  Page Should Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  #untuk handling appium stuck karena popup -> diclose dan recent apps lagi
  Press Keycode    3   #home
  Sleep    1s
  Press Keycode    187  #recent apps
  Sleep    1s
  Press Keycode    187  #recent apps
  #masuk ke halaman grafik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tvRecordMum')][@text='Grafik Anak']    100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='4,4']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='53,7']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='36,9']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/see_graphic_mum')][@text='Lihat Grafik']

Homepage New Born Add Album
  Click Element    //android.widget.FrameLayout[contains(@resource-id,'com.temanbumil.android:id/btnAddAlbum')]
  #masuk ke Album
  Wait Until Element Is Visible    //android.widget.Button[contains(@text,'BUAT ALBUM BARU')]    100s
  Page Should Contain Text    Simpan foto-foto Mums
  #tambah album
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_album')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    Album Newborn
  Hide Keyboard
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/action_save')]
  #buat album sukses, kembali ke halaman album
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_camera')]    100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Album Newborn')]
  #ambil foto/gambar
  Click Element    ${APP}:id/layout_upload_photo
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_photo')]   100s
  Sleep    2s
  #Ke Edit Album
  Click Element    //android.widget.TextView[contains(@text,'Album Newborn')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Album Newborn')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Daftar Album')]
  #tambah foto di detail album
  Click Element    //android.widget.TextView[contains(@text,'Tambah foto')]
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Tambah foto')]   100s
  Refresh Halaman
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@index,'1')]   100s
  #edit album
  Click Element    //android.widget.ImageView[contains(@content-desc,'Opsi lainnya')]
  # Click Element    accessibility_id=Opsi lainnya
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Edit')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Edit')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    100s
  #edit nama album
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Clear Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    Album Newborn-edit
  Hide Keyboard
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  Wait Until Page Contains    Daftar Album
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Daftar Album')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Album Newborn-edit')]
  #hapus album
  Click Element    //android.widget.ImageView[contains(@content-desc,'Opsi lainnya')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Hapus')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Hapus')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Apakah anda yakin ingin menghapus Album?')]
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  #kembali ke halaman album
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_album')]   100s
  Page Should Contain Text    Simpan foto-foto Mums

Homepage New Born Info Tumbuh Kembang
  #cek homepage newborn
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD RECORD')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']    100s
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-info}   Convert To String    ${lebars}
  ${x2-info}   Convert To String    ${lebars}
  ${y1-info}   Convert To String    ${tinggis}
  ${y2-info}   Evaluate    ${tinggis} - 500
  #cari halaman info tumbuh kembang anak
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.CheckedTextView[contains(@resource-id,'com.temanbumil.android:id/btn_checklist')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-info}    ${y1-info}    ${x2-info}    ${y2-info}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_ideal')]
  #masuk ke halaman info tumbuh kembang
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_cover')]   100s
  #swipe ke bawah halaman tumbuh kembang
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title_newborn')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-info}    ${y1-info}    ${x2-info}    ${y2-info}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title_newborn')]

Homepage newborn Checklist
#cek homepage newborn
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD RECORD')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']    100s
  #swipe kebawah
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-check}   Convert To String    ${lebars}
  ${x2-check}   Convert To String    ${lebars}
  ${y1-check}   Convert To String    ${tinggis}
  ${y2-check}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_see_more')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #click checklist
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='0']
  #klik see more untuk masuk ke halaman checklist
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_see_more')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')][@text='Perawatan di Rumah']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']
  #click checklist
  Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='0']


Homepage Newborn Tips
  #cek homepage newborn
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD RECORD')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']    100s
  #cek homepage newborn
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-tips}   Convert To String    ${lebars}
  ${x2-tips}   Convert To String    ${lebars}
  ${y1-tips}   Convert To String    ${tinggis}
  ${y2-tips}   Evaluate    ${tinggis} - 500
  #Scroll artikel sampai dapat tips
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips}    ${y1-tips}    ${x2-tips}    ${y2-tips}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/title_tips')][@text='TIPS']
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_description')][@text='Tips Memilih Pompa ASI']
  #tunggu sampai masuk halaman tips & terload sempurna
    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_author')]    100s
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/baseIVArrow')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips}    ${y1-tips}    ${x2-tips}    ${y2-tips}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/baseIVArrow')]
  #pilih tips terkait
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/baseIVArrow')]
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_author')]   100s
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]    100s
  #kembali ke tips sebelumnya
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]     100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]

Homepage Newborn Tips Slide
  #tunggu sampai halaman homepage terload sempurna
  #swipe sampai dapat text artikel terkait
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-tips}   Convert To String    ${lebars}
  ${x2-tips}   Convert To String    ${lebars}
  ${y1-tips}   Convert To String    ${tinggis}
  ${y2-tips}   Evaluate    ${tinggis} - 500
  #Scroll artikel sampai dapat text artikel terkait
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips}    ${y1-tips}    ${x2-tips}    ${y2-tips}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #ambil kordinat element
  ${tipsslide}    Get Element Location    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
  ${tipsslide}    Convert To String    ${tipsslide}
  ${remove}   Remove String    ${tipsslide}    {  '   y   x    :   }
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Membersihkan Kerak Kepala')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'Membersihkan Kerak Kepala')]
  #tunggu sampai masuk halaman tips & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until element is visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-tips2}   Convert To String    ${lebars}
  ${x2-tips2}   Convert To String    ${lebars}
  ${y1-tips2}   Convert To String    ${tinggis}
  ${y2-tips2}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips2}    ${y1-tips2}    ${x2-tips2}    ${y2-tips2}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #pilih tips terkait
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  #tunggu tips terkait sampai terbuka & terload sempurna
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView    100s
  #kembali ke tips sebelumnya
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]     100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]

Homepage Newborn Artikel Terkait
  # Page Should Contain Element    //android.widget.TextView[contains(@text,'ARTIKEL TERKAIT')]
  #ambil panjang swipe berdasarkan device
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-artikel}   Convert To String    ${lebars}
  ${x2-artikel}   Convert To String    ${lebars}
  ${y1-artikel}   Convert To String    ${tinggis}
  ${y2-artikel}   Evaluate    ${tinggis} - 500
  #swipe halaman tips sampai halaman bawah
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='Menyusui']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  #pilih artikel terkait
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='Menyusui']
  #tunggu sampai artikel terload sempurna
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until page contains element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView

Homepage Newborn Minggu Ini
  #cek homepage newborn
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']   100s
  #swipe ke bulan  12 (swipe left)
  #tunggu sampai halaman homepage terload sempurna
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='2 Mgg']  100s
  #ambil kordinat element
  ${weeklide}    Get Element Location    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='2 Mgg']
  ${weeklide}    Convert To String    ${weeklide}
  ${remove}   Remove String    ${weeklide}    {  '   y   x    :   }
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='12 Bln']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='12 Bln']
  #cek halaman 12 bulan
  #cek homepage newborn
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'12 Bln')][@selected='true']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD RECORD')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']    100s
  Page Should Contain Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/this_week_indicator')]

Mulai Polling
  ${poling}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'POLLING')]
  Run Keyword If    ${poling}    Run Keywords    loop mulai poling
  ...   AND     mulai poling
  ...   ELSE    [Documentation]  Tidak ada poling

loop mulai poling
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_start_pool')][@text='MULAI POLLING >>']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  \    ${loopCount}    Set Variable    ${loopCount}+1

mulai poling
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_start_pool')][@text='MULAI POLLING >>']
  Sleep    1s
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${isipoling}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-di,'com.temanbumil.android:id/tvTitlePolling')]
  \    Run Keyword If    ${isipoling}    Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txtAnswer')][@text='Ya']
  \    Run Keyword If    ${isipoling}    Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btnSubmit')][@text='SUBMIT']
  \    Run Keyword If    '${isipoling}' == 'false'    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
