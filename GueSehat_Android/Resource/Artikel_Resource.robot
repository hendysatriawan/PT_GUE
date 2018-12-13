*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Login_Resource.robot

*** Variables ***
${judulcariartikel}   Mengapa Semua Orang Menyukai Diskon?
${judulartikelpagination}    Saat Ini, Stres Meningkat di Kalangan Usia 20-an!
${judulartikelslideshow}    10 Alasan Ilmiah Mengapa Pria Harus Bermain Gitar
${judulartikelcounting}     Apakah Kamu Dehidrasi?
${judulartikeltrivia}     Kuis: Apakah Kamu Memiliki Gangguan Kecemasan?
${judulartikelsurvey}     Survei: Apakah Kamu Meredakan Stres dengan Melakukan Kegiatan Seni?

*** Keywords ***
Kembali ke Artikel Semua dari Detil Artikel
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Semua')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}

Kembali ke Artikel Lifestyle dari Detil Artikel
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lifestyle')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}

Kembali ke Artikel Medis dari Detil Artikel
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Medis')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}

Kembali ke Artikel Sex Love dari Detil Artikel
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Sex & Love')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}

Kembali ke Artikel Wanita dari Detil Artikel
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Wanita')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}

Kembali ke Artikel dari Pencarian Artikel
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # halaman hasil pencarian
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ARTIKEL')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']
  # verifikasi halaman artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Wanita')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}

Kembali ke Home dari Artikel Pagination
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # halaman hasil pencarian
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ARTIKEL')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']
  # verifikasi halaman home
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Kembali ke Home dari Artikel Slideshow
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # halaman hasil pencarian
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ARTIKEL')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']
  # verifikasi halaman home
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Kembali ke Home dari Artikel Counting
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # halaman hasil pencarian
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ARTIKEL')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']
  # verifikasi halaman home
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Kembali ke Home dari Artikel Trivia
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # halaman hasil pencarian
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ARTIKEL')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']
  # verifikasi halaman home
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Kembali ke Home dari Artikel Survey
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # halaman hasil pencarian
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ARTIKEL')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']
  # verifikasi halaman home
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Masuk Artikel via Side Menu & Detail Semua artikel
  # buka side menu
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_logged_in')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'com.guesehat.android:id/menu_artikel')]    ${timeout}
  # masuk ke menu artikel
  Click Element    //android.widget.LinearLayout[contains(@resource-id,'com.guesehat.android:id/menu_artikel')]
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Semua')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}
  # masuk ke detail artikel - semua
  ${judulsemua}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${judulsemua}
  ${categorisemua}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')]
  Log    ${categorisemua}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulsemua}']
  # masuk ke artikel detail
  Recent Aplikasi
  # cek 17+
  ${cek17+}   Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvWarning')]
  Run Keyword If    ${cek17+}    Run Keyword    Kembali ke Artikel Sex Love dari Detil Artikel
  ...   ELSE IF   '${cek17+}' == 'False'  Run Keyword    Detail Artikel Tab Semua

Detail Artikel Tab Semua
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]    ${timeout}
  # scroll sampai halaman bawah
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_comment_label')][@text='Komentar']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]    ${timeout}
  Kembali ke Artikel Semua dari Detil Artikel

Masuk Artikel via Side Menu & Detail Lifestyle Artikel
  # pindah ke tab Lifestyle
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lifestyle')][@selected='false']   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Lifestyle')][@selected='false']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lifestyle')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}
  # masuk ke detail artikel - Lifestyle
  ${judullifestyle}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${judullifestyle}
  ${categorilifestyle}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')]
  Log    ${categorilifestyle}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judullifestyle}']
  # masuk ke artikel detail
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judullifestyle}']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='${categorilifestyle}']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]    ${timeout}
  # scroll sampai halaman bawah
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_comment_label')][@text='Komentar']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]    ${timeout}


Masuk Artikel via Side Menu & Detail Medis Artikel
  # pindah ke tab Medis
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Medis')][@selected='false']   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Medis')][@selected='false']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Medis')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}
  # masuk ke detail artikel - Medis
  ${judulmedis}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${judulmedis}
  ${categorimedis}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')]
  Log    ${categorimedis}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulmedis}']
  # masuk ke artikel detail
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulmedis}']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='${categorimedis}']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]    ${timeout}
  # scroll sampai halaman bawah
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_comment_label')][@text='Komentar']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]    ${timeout}

Masuk Artikel via Side Menu & Detail Sex Love Artikel
  # pindah ke tab Sex & Love
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Sex & Love')][@selected='false']   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Sex & Love')][@selected='false']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Sex & Love')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}
  # masuk ke detail artikel - Sex & Love
  ${judulsexlove}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${judulsexlove}
  ${categorisexlove}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')]
  Log    ${categorisexlove}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulsexlove}']
  # masuk ke artikel detail
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/imageWarning')]   ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvWarning')][@text='Halaman yang Kamu tuju berisi konten dewasa. Log in terlebih dahulu dan pastikan usia kamu sudah mencukupi untuk mengaksesnya.']
  Page Should Contain Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_login')][@text='LOGIN']

Masuk Artikel via Side Menu & Detail Wanita Artikel
  # pindah ke tab Wanita
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Wanita')][@selected='false']   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Wanita')][@selected='false']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Wanita')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Artikel']   ${timeout}
  Wait Until Page Contains Element    //android.support.v7.widget.RecyclerView[contains(@resource-id,'com.guesehat.android:id/rv_articles')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.guesehat.android:id/fab_create_article')]   ${timeout}
  # masuk ke detail artikel - Wanita
  ${judulwanita}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${judulwanita}
  ${categoriwanita}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')]
  Log    ${categoriwanita}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulwanita}']
  # masuk ke artikel detail
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulwanita}']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_category')][@text='${categoriwanita}']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]    ${timeout}
  # scroll sampai halaman bawah
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_comment_label')][@text='Komentar']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]    ${timeout}

Cari Artikel & Masuk ke Detail
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]
  # masuk halaman pencarian
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Tap    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]    ${judulcariartikel}
  klik cari
  Hide Keyboard
  # tampil yang dicari
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulcariartikel}']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulcariartikel}']
  Recent Aplikasi
  # masuk ke detail artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulcariartikel}']   ${timeout}

Artikel Pagination & Detail
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]
  # masuk halaman pencarian
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Tap    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]    ${judulartikelpagination}
  klik cari
  Hide Keyboard
  # tampil yang dicari
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelpagination}']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelpagination}']
  Recent Aplikasi
  # masuk ke detail artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelpagination}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  # scroll sampai dapat pagination
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtPage')][@text='Page 1 of 2']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnNext')]   ${timeout}
  # ke next page
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnNext')]
  Wait Until Page Contains Element    //android.view.View[contains(@text,'Bagaimana Cara Mengatasi Stres?')]    ${timeout}
  Wait Until Page Contains Element    //android.view.View[contains(@text,'1. Berpikir positif')]    ${timeout}
  #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtPage')][@text='Page 2 of 2']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnPrev')]   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnPrev')]
  # cek sudah kembali ke halaman pagination 1
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Page Should Not Contain Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnPrev')]
  # ke halaman atas
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - ${tinggiy}
  ${x1-hal1}   Convert To String    ${lebars}
  ${x2-hal1}   Convert To String    ${lebars}
  ${y1-hal1}   Convert To String    ${tinggis}
  ${y1-hal1}   Evaluate    ${tinggis} + 300
  ${y2-hal1}   Evaluate    ${y1-hal1} + 500
  Log    ${x1-hal1}
  Log    ${x2-hal1}
  Log    ${y1-hal1}
  Log    ${y2-hal1}
  #Scroll artikel sampai atas (sampai dapat tombol ubah status sudah hamil)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelpagination}']
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-hal1}    ${y1-hal1}    ${x2-hal1}    ${y2-hal1}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Page Should Not Contain Element    //android.view.View[contains(@text,'Bagaimana Cara Mengatasi Stres?')]

Artikel Slideshow & Detail
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]
  # masuk halaman pencarian
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Tap    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]    ${judulartikelslideshow}
  klik cari
  Hide Keyboard
  # tampil yang dicari
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelslideshow}']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelslideshow}']
  Recent Aplikasi
  # masuk ke detail artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelslideshow}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  # scroll sampai dapat slideshow
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
  #Scroll artikel sampai dapat slideshow
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtNumber')][@text='1 dari 10']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    3s
  # klik next slide
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${next}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnnext')]
  \    Run Keyword Unless    ${next}    Exit For Loop
  \    Sleep    1s
  \    Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnnext')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtNumber')][@text='10 dari 10']   ${timeout}
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnnext')]
  # klik prev slide
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${next}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnprev')]
  \    Run Keyword Unless    ${next}    Exit For Loop
  \    Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnprev')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtNumber')][@text='1 dari 10']   ${timeout}
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btnprev')]

Artikel Counting & Detail
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]
  # masuk halaman pencarian
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Tap    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]    ${judulartikelcounting}
  klik cari
  Hide Keyboard
  # tampil yang dicari
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelcounting}']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelcounting}']
  Recent Aplikasi
  # masuk ke detail artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelcounting}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  # scroll sampai dapat slideshow
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
  #Scroll artikel sampai dapat counting
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/checkBox2')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    3s
  # klik CheckBox
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${next}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/checkBox2')][@checked='false']
  \    ${submit}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]
  \    Run Keyword Unless    ${next}    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    Sleep    1s
  \    Click Element    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/checkBox2')][@checked='false']
  \    Run Keyword If    ${submit}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]   ${timeout}
  # submit
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]
  # masuk ke halaman result
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Your Result:')]   ${timeout}
  #Scroll artikel sampai dapat tombol ulangi kuis
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')][@text='ULANGI KUIS']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1

Artikel Trivia & Detail
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]
  # masuk halaman pencarian
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Tap    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]    ${judulartikeltrivia}
  klik cari
  Hide Keyboard
  # tampil yang dicari
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikeltrivia}']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikeltrivia}']
  Sleep    5s
  Recent Aplikasi
  # masuk ke detail artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikeltrivia}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  # scroll sampai dapat kuis trivia
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
  #Scroll artikel sampai dapat slideshow
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.RadioButton[contains(@text,'Tidak')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    3s
  # klik RadioButton
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${next}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.RadioButton[contains(@index,'0')]   ${timeout}
  \    Click Element    //android.widget.RadioButton[contains(@index,'0')]
  \    ${result}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')][@text='LIHAT HASIL']   5s
  \    Run Keyword If    ${result}    Exit For Loop
  \    ${next2}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')][@text='BERIKUTNYA']   5s
  \    Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')][@text='BERIKUTNYA']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')][@text='LIHAT HASIL']   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')][@text='LIHAT HASIL']
  # validasi halaman result
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Score kamu:')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@resource-id,'com.guesehat.android:id/PieChart')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtTriviaResult')]   ${timeout}


Artikel Survey & Detail
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_search')]
  # masuk halaman pencarian
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_cancel')][@text='Batal']    ${timeout}
  Tap    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')]    ${judulartikelsurvey}
  klik cari
  Hide Keyboard
  # tampil yang dicari
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelsurvey}']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelsurvey}']
  Recent Aplikasi
  # masuk ke detail artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulartikelsurvey}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_like')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  # scroll sampai dapat CheckBox
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
  #Scroll artikel sampai dapat CheckBox
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cbJawab')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    3s
  # klik CheckBox 1
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${next}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cbJawab')][@checked='false']
  \    Run Keyword Unless    ${next}    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    Sleep    1s
  \    ${submit}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]
  \    Run Keyword If    ${submit}    Exit For Loop
  \    Click Element    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cbJawab')][@checked='false']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]
  # klik CheckBox 2
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${next}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cbJawab')][@checked='false']
  \    Run Keyword Unless    ${next}    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    Sleep    1s
  \    ${submit}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]
  \    Run Keyword If    ${submit}    Exit For Loop
  \    Click Element    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cbJawab')][@checked='false']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]
  # klik CheckBox 3
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${next}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cbJawab')][@checked='false']
  \    Run Keyword Unless    ${next}    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    Sleep    1s
  \    ${submit}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]
  \    Run Keyword If    ${submit}    Exit For Loop
  \    Click Element    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cbJawab')][@checked='false']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]
  # klik CheckBox 4
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${next}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cbJawab')][@checked='false']
  \    Run Keyword Unless    ${next}    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    Sleep    1s
  \    ${submit}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]
  \    Run Keyword If    ${submit}    Exit For Loop
  \    Click Element    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cbJawab')][@checked='false']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_submit')]
  # masuk ke halaman result
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Great Job!')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Terima kasih atas partisipasi Anda telah mengisi survei ini.')]   ${timeout}
