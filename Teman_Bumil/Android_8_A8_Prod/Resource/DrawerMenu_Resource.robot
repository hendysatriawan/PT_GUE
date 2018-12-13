*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Library    String
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
Resource    ../Resource/Notification_Resource.robot
Resource    ../Resource/Checklist_Resource.robot

*** Variables ***
${nama-tambah-anak-program-hamil}   Ani Junior D
${nama-tambah-anak-sedang-hamil}   Ani Senior A
${nama-tambah-anak-newborn}   Ani new
${BERAT_BAYI}     4.0
${PANJANG_BAYI}   53.5
${LINGKAR_BAYI}   35.6
#Data untuk di drawer menu
${judul_artikel_1}
${judul_artikel_2}
${judul_artikel_cari}
${judul_tips_1}   Cukupi Kebutuhan Zat Besi
${judul_tips_2}   Trik Hamil Anak Perempuan
${judul_tips_cari}
${judul_artikel_sedang_hamil_1}   Kesehatan
${judul_artikel_sedang_hamil_2}   Nutrisi & Kebugaran
${carithread}   Usia kandungan baru mau 8 minggu apa boleh berhubungan intim
${subkategori}   USG
${filterresep}   8-10 Bulan
${cariresep}    Sosis Gulung Mi
*** Keywords ***
Refresh Halaman
  #balik ke atas untuk collapse pemeriksaan laboratorium
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
  # refresh swipe down
  Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}

Hapus Data Tambah Anak Program Hamil
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_profile')]   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_profile')]
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Sudah Lahir')]   100s
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${data}    Run Keyword And Return Status    Page Should Not Contain Element    //android.widget.TextView[contains(@text,'Sudah Lahir')]
  \    log    ${data}
  \    Run Keyword If    ${data}    Exit For Loop
  \    Click Element    //android.widget.TextView[contains(@text,'Sudah Lahir')]
  \    Wait Until Element Is Visible    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/delete')]   100s
  \    Click Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/delete')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Not Contain Element    //android.widget.TextView[contains(@text,'Sudah Lahir')]   100s

Hapus Data Tambah Anak Sedang Hamil
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_profile')]   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_profile')]
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Sudah Lahir')]   100s
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${data}    Run Keyword And Return Status    Page Should Not Contain Element    //android.widget.TextView[contains(@text,'Sudah Lahir')]
  \    log    ${data}
  \    Run Keyword If    ${data}    Exit For Loop
  \    Click Element    //android.widget.TextView[contains(@text,'Sudah Lahir')]
  \    Wait Until Element Is Visible    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/delete')]   100s
  \    Click Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/delete')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Not Contain Element    //android.widget.TextView[contains(@text,'Sudah Lahir')]   100s

Hapus Data Tambah Anak Newborn
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_profile')]   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_profile')]
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_baby_name')][@text='${nama-tambah-anak-newborn}']   100s
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${data}    Run Keyword And Return Status    Page Should Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_baby_name')][@text='${nama-tambah-anak-newborn}']
  \    log    ${data}
  \    Run Keyword If    ${data}    Exit For Loop
  \    Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_baby_name')][@text='${nama-tambah-anak-newborn}']
  \    Wait Until Element Is Visible    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/delete')]   100s
  \    Click Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/delete')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Page Should Not Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_baby_name')][@text='${nama-tambah-anak-newborn}']   100s

Kembali ke Resep Dari Search
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]    100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]
  #cek halaman menu resep
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Resep']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='All'][@selected='true']

Kembali ke Menu Resep
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #cek halaman menu resep
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Resep']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='All'][@selected='true']

Kembali ke Resep Dari Filter
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Resep']   10s
  ${homeresep}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Resep']   5s
  Run Keyword If    '${homeresep}' == 'False'    Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Resep']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='All'][@selected='true']
  ${filterresepUP}  Convert To Uppercase    ${filterresep}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='${filterresepUP}']   100s

Kembali ke forum dari create thread
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_kategori')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Popular'][@selected='true']

Kembali ke forum dari halaman search
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]    10s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_kategori')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Popular'][@selected='true']

Kembali ke forum dari halaman bookmark
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #kembali ke halaman forum
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Forum']   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Popular'][@selected='true']   100s
  Sleep    1s

Kembali Ke Homepage Tumbuh Kembang dari Grafik Menu
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke homepage
  Wait Until Element Is Visible    ${APP}:id/tv_nav_home    100s
  Click Element    ${APP}:id/tv_nav_home
  Wait Until Page Does Not Contain Element    ${APP}:id/tv_nav_home

Logout With Coachmark
    Click Element    ${APP}:id/btn_navigation
    Coachmark Got It
    Wait Until Element Is Visible    ${APP}:id/tv_nav_logout    100s
    Click Element    ${APP}:id/tv_nav_logout
    Wait Until Element Is Visible    android:id/message   100s
    Click Element    android:id/button1
    Wait Until Element Is Visible    com.temanbumil.android:id/btn_login  100s

Logout Without Coachmark
  Click Element    ${APP}:id/btn_navigation
  Wait Until Element Is Visible    ${APP}:id/tv_nav_logout    100s
  Click Element    ${APP}:id/tv_nav_logout
  Wait Until Element Is Visible    android:id/message   100s
  Click Element    android:id/button1
  Wait Until Element Is Visible    com.temanbumil.android:id/btn_login  100s

Tambah Data Program Hamil With Coachmark
  Click Element    ${APP}:id/btn_navigation
  Coachmark Got It
  Wait Until Element Is Visible    ${APP}:id/rp_nav_child_selected    100s
  Click Element    ${APP}:id/rp_nav_child_selected
  Wait Until Element Is Visible    ${APP}:id/btn_add_fertil   100s
  #pilih tambah program hamil
  Click Element    ${APP}:id/btn_add_fertil
  Wait Until Element Is Visible    ${APP}:id/tvDescription    100s
  Element Text Should Be    ${APP}:id/tvDescription    Apakah Mums yakin ingin menggunakan fitur Program Hamil?
  Click Element    ${APP}:id/btn_positive

Tambah Data Sedang Hamil With Coachmark
  Click Element    ${APP}:id/btn_navigation
  Coachmark Got It
  Wait Until Element Is Visible    ${APP}:id/rp_nav_child_selected    100s
  Click Element    ${APP}:id/rp_nav_child_selected
  Wait Until Element Is Visible    ${APP}:id/btn_add_fetus    100s
  #pilih tambah data sedang hamil
  Click Element    ${APP}:id/btn_add_fetus
  Wait Until Element Is Visible    ${APP}:id/tv_q_main    100s
  Element Text Should Be    ${APP}:id/tv_q_main    Apakah Mums sudah dinyatakan hamil oleh dokter?
  #pilih sudah hamil
  Click Element    ${APP}:id/btn_q_main_done
  Wait Until Element Is Visible    ${APP}:id/tv_q_date    100s
  #isi tanggal due date
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
  #berhasil tambah data sedang hamil
  Coachmark Got It

Program Hamil Menu Checklist
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #masuk ke halaman checklist
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Program Hamil')]    100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_checklist')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_checklist')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Checklist')]    100s
  #checklis program hamil
  Program Hamil Checklist

Program Hamil Menu Agenda
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Agenda
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_agenda')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_agenda')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Agenda')]   100s
  Element Text Should Be    //android.widget.TextView[contains(@text,'Agenda')]    Agenda
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]    100s
  #tambah agenda
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_title')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Tambah Agenda')]
  #input data agenda
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_title')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_title')]    Cek Ke bidan
  Hide Keyboard
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_content')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_content')]    Cek kehamilan apakah, sudah hamil atau belum
  Hide Keyboard
  #input tanggal
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_date')]
  Wait Until Element Is Visible    //android.widget.DatePicker[contains(@resource-id,'android:id/datePicker')]   100s
  #pilih tanggal
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]   100s
  #pilih jam
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_time')]
  Wait Until Element Is Visible    //android.view.View[contains(@resource-id,'android:id/radial_picker')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]   100s
  #pilih pengingat
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_time_reminder')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_30m')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_30m')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]   100s
  #pilih simpan
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  Permission_Calendar
  #kembali ke halaman agenda
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Agenda']   100s
  # Page Should Contain Element    //android.widget.TextView[contains(@text,'Cek Ke bidan')]
  #agenda detail
  Click Element    ${APP}:id/txt_info
  Wait Until Element Is Visible    ${APP}:id/btn_complete   100s
  #ubah jadi complete
  Click Element    ${APP}:id/btn_complete
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Text    UNCOMPLETE
  #ubah jadi uncomplete
  Click Element    ${APP}:id/btn_complete
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Text    COMPLETE
  #edit agenda
  Click Element    ${APP}:id/btn_overflow
  Wait Until Element Is Visible    ${APP}:id/edit   100s
  Click Element    ${APP}:id/edit
  #masuk ke halaman ubah agenda
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  Clear Text    ${APP}:id/edit_text_title
  Tap    ${APP}:id/edit_text_title
  Input Text    ${APP}:id/edit_text_title    Cek Ke Bidan - Edit
  Hide Keyboard
  #edit pengingat
  Click Element    ${APP}:id/edit_text_time_reminder
  Wait Until Page Contains Element    ${APP}:id/tv_30m    100s
  Click Element    ${APP}:id/tv_15m
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #simpan yang diedit
  Click Element    ${APP}:id/btn_save
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_share   30s
  #share agenda
  Click Element    ${APP}:id/btn_actionbar_share
  Sleep    4s
  Press Keycode    ${back}
  Sleep    4s
  Press Keycode    ${back}
  #hapus agenda
  Wait Until Page Contains Element    ${APP}:id/txt_info    15s
  Click Element    ${APP}:id/txt_info
  Wait Until Element Is Visible    ${APP}:id/btn_complete   100s
  Click Element    ${APP}:id/btn_overflow
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s

Program Hamil Menu Album
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Album
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_album')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_album')]
  Wait Until Element Is Visible    //android.widget.Button[contains(@text,'BUAT ALBUM BARU')]    100s
  Page Should Contain Text    Simpan foto-foto Mums
  #tambah album
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_album')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    Album Program Hamil
  Hide Keyboard
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/action_save')]
  #buat album sukses, kembali ke halaman album
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_camera')]    100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Album Program Hamil')]
  #ambil foto/gambar
  Click Element    ${APP}:id/layout_upload_photo
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_photo')]   100s
  # Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_close')]   100s
  # Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_close')]   100s
  # Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_photo')]   100s
  Sleep    2s
  #Ke Edit Album
  Click Element    //android.widget.TextView[contains(@text,'Album Program Hamil')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Album Program Hamil')]    30s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Daftar Album')]
  #tambah foto di detail album
  Click Element    //android.widget.TextView[contains(@text,'Tambah foto')]
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
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
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Tambah foto')]   100s
  Refresh Halaman
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@index,'2')]   100s
  #edit album
  Click Element    //android.widget.ImageView[contains(@content-desc,'Opsi lainnya')]
  # Click Element    accessibility_id=Opsi lainnya
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Edit')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Edit')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    100s
  #open camera
  Click Element    //android.widget.TextView[contains(@text,'Tambah foto')]
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
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
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_close')]   100s
  # Wait Until Page Contains Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/pb_upload_progress')]   100s
  # Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/pb_upload_progress')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Tambah foto')]    100s
  #edit nama album
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Clear Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    Album Program Hamil-edit
  Hide Keyboard
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  Wait Until Page Contains    Daftar Album    30s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Daftar Album')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Album Program Hamil-edit')]   30s
  #hapus album
  Click Element    //android.widget.ImageView[contains(@content-desc,'Opsi lainnya')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Hapus')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Hapus')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Apakah anda yakin ingin menghapus Album?')]   30s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  #kembali ke halaman album
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_album')]   100s
  Page Should Contain Text    Simpan foto-foto Mums

Program Hamil Menu Artikel
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Artikel
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_article')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_article')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Ini Pertanda Masa Subur')]     100s      #wait sampai tampil artikel
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]     #ada tombol cari
  #pilih Artikel
  Click Element    //android.widget.TextView[contains(@text,'Ini Pertanda Masa Subur')]
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #scroll artikel sampai bawah
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Mengenal Infeksi Rahim Penyebab Infertilitas')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'Mengenal Infeksi Rahim Penyebab Infertilitas')]
  #pilih artikel selanjutnya
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #like artikel
  #Scroll artikel sampai bawah (sampai muncul icon like)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_like')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_like')]
  Wait Until Page Does Not Contain Element    ${APP}:id/snackbar_text   10s
  Click Element    ${APP}:id/btn_actionbar_like
  # Wait Until Element Is Visible    ${APP}:id/snackbar_text    10s
  # Element Text Should Be    ${APP}:id/snackbar_text    You have liked this!
  #share articel
  Wait Until Page Does Not Contain Element    ${APP}:id/snackbar_text   100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]
  Wait Until Element Is Visible    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]
  Sleep    2s
  Press Keycode    ${back}
  Wait Until Page Does Not Contain Element    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]
  Sleep    2s

Program Hamil Menu Artikel Cari
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #kembali ke artikel sebelumnya
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #cari artikel
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Artikel')][@selected='true']
  #input yang mau dicari
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]    Hamil
#   Press Keycode    13
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Hamil atau Haid? Ini Perbedaan Gejalanya!')]   100s
  #masuk ke artikelnya
  Click Element    //android.widget.TextView[contains(@text,'Hamil atau Haid? Ini Perbedaan Gejalanya!')]
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    10s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #close search artikel kembali ke halaman artikel
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   100s

Program Hamil Menu Tips
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Tips
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_tips')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_tips')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Tips')]    100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   #tombol cari
  #pilih tips
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'${judul_tips_1}')]   100s
  Click Element    //android.widget.TextView[contains(@text,'${judul_tips_1}')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]    100s
  Page Should Contain Text    Tips
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-tips}   Convert To String    ${lebars}
  ${x2-tips}   Convert To String    ${lebars}
  ${y1-tips}   Convert To String    ${tinggis}
  ${y2-tips}   Evaluate    ${tinggis} - 700
  #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'${judul_tips_2}')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips}    ${y1-tips}    ${x2-tips}    ${y2-tips}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'${judul_tips_2}')]
  #pilih artikel selanjutnya
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'${judul_tips_2}')]   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #Share
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]
  Wait Until Page Contains Element    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]    100s
  Press Keycode    ${back}
  Sleep    2s
  Page Should Not Contain Element    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]   100s
  #keluar dari tips
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   100s

Program Hamil Menu Tips Cari
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   #tombol cari
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Tips')][@selected='true']
  #input yang mau dicari
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]    Hamil
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Trik Hamil Anak Perempuan')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Trik Hamil Anak Perempuan')]
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #close search tips kembali ke halaman tips
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_search   100s

Program Hamil Menu Home
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #Pilih Home
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_home')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_home')]
  #kembali ke homepage
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_mother')]   100s
  # #cek halaman homepage karena sebelumnya dibuat agenda
  # Page Should Contain Element    //android.widget.CheckedTextView[contains(@text,'AGENDA')]

Program Hamil Tambah Anak
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]     100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #Pilih Tambah Anak
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]     100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]
  Sleep    1s
  #pilih tambah anak
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_child')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_child')]
  #msuk ke halaman tambah Anak
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Isi tanggal lahir si Kecil')]   100s
  ${tanggal1}   Get Element Size    //android.widget.NumberPicker[contains(@index,'0')]
  # #untuk swipe date time picker
  # Log    ${tanggal1}
  # ${tanggal1}    Convert To String    ${tanggal1}
  # ${tanggal1}   Remove String    ${tanggal1}    {  '   width   height    :   }
  # Log    ${tanggal1}
  # #ambil nilai height saja
  # ${tanggal1-tinggi}   Fetch From Right    ${tanggal1}    ,
  # Log    ${tanggal1-tinggi}
  #langsung klik lanjut (pakai date sekarang)
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_date_choose')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_date_choose')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Isi nama si Kecil')]    100s
  #isi nama anak & jenis kelamin
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_name')]    ${nama-tambah-anak-program-hamil}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.Spinner[contains(@resource-id,'com.temanbumil.android:id/sp_gender')]   100s
  #pilih jenis kelamin
  Click Element    //android.widget.Spinner[contains(@resource-id,'com.temanbumil.android:id/sp_gender')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Laki-laki')]   100s
  Click Element    //android.widget.TextView[contains(@text,'Laki-laki')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Laki-laki')]    100s
  #pilih lanjut
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_newborn_name_choose')]
  #masuk ke halaman isi data sikecil
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Isi data si Kecil saat lahir')]   100s
  #input data berat
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_databerat')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_databerat')]    5
  Hide Keyboard
  #input data panjang
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datatinggi')]
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datatinggi')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datatinggi')]    60
  Hide Keyboard
  #input data lingkar kepala
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datalingkarkepala')]
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datalingkarkepala')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datalingkarkepala')]   40
  Hide Keyboard
  #klik submit
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_newborn_data_choose')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_newborn_data_choose')]
  #pilih tema
  ${pilihtema}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_q_theme')][@text='Pilih tema yang paling menarik untuk Mums!']
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.CheckedTextView[contains(@text,'Tumbuh Kembang')]
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.CheckedTextView[contains(@text,'Psikologi')]
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.CheckedTextView[contains(@text,'Menyusui')]
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.CheckedTextView[contains(@text,'Kesehatan')]
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.CheckedTextView[contains(@text,'MPASI')]
  #klik tombol submit
  Run Keyword If    ${pilihtema}    Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_theme_choose')]
  ...   ELSE    Log    Tidak Pilih Tema, Tema Sudah Dipilih Sebelumnya

Cek Data Program Hamil Tambah Anak & Hapus Data Tambah Anak
    #cek homepage newborn
    Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
    Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')]
    # Page Should Contain Element    //android.widget.TextView[contains(@text,'${nama-tambah-anak-program-hamil}')]
    Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']
    #cek data di side menu
    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
    Coachmark Got It
    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]   100s
    Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]
    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_baby_name')]   100s
    Page Should Contain Element    //android.widget.TextView[contains(@text,'Program Hamil')]
    #kembali ke homepage Program Hamil
    Click Element    //android.widget.TextView[contains(@text,'Program Hamil')]
    Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Jika Mums sudah hamil klik di sini')]   30s
    Hapus Data Tambah Anak Program Hamil



Sedang Hamil Menu Checklist
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #masuk ke halaman checklist
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Babyku')]   30s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_checklist')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_checklist')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Checklist')]    30s
  #checklis sedang hamil
  Sedang Hamil Checklist

Sedang Hamil Menu Agenda
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Agenda
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_agenda')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_agenda')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Agenda')]   100s
  Element Text Should Be    //android.widget.TextView[contains(@text,'Agenda')]    Agenda
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]    100s
  #tambah agenda
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_title')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Tambah Agenda')]
  #input data agenda
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_title')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_title')]    Cek Ke dokter kandungan
  Hide Keyboard
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_content')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_content')]    Cek kesehatan kandungan
  Hide Keyboard
  #input tanggal
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_date')]
  Wait Until Element Is Visible    //android.widget.DatePicker[contains(@resource-id,'android:id/datePicker')]   100s
  #pilih tanggal
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]   100s
  #pilih jam
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_time')]
  Wait Until Element Is Visible    //android.view.View[contains(@resource-id,'android:id/radial_picker')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]   100s
  #pilih pengingat
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_time_reminder')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_30m')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_30m')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]   100s
  #pilih simpan
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  Permission_Calendar
  #kembali ke halaman agenda
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Agenda')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Cek Ke dokter kandungan')]
  #agenda detail
  Click Element    ${APP}:id/txt_info
  Wait Until Element Is Visible    ${APP}:id/btn_complete   100s
  #ubah jadi complete
  Click Element    ${APP}:id/btn_complete
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Text    UNCOMPLETE
  #ubah jadi uncomplete
  Click Element    ${APP}:id/btn_complete
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Text    COMPLETE
  #edit agenda
  Click Element    ${APP}:id/btn_overflow
  Wait Until Element Is Visible    ${APP}:id/edit   100s
  Click Element    ${APP}:id/edit
  #masuk ke halaman ubah agenda
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  Clear Text    ${APP}:id/edit_text_title
  Tap    ${APP}:id/edit_text_title
  Input Text    ${APP}:id/edit_text_title    Cek Ke dokter kandungan - Edit
  Hide Keyboard
  #edit pengingat
  Click Element    ${APP}:id/edit_text_time_reminder
  Wait Until Page Contains Element    ${APP}:id/tv_30m    100s
  Click Element    ${APP}:id/tv_15m
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #simpan yang diedit
  Click Element    ${APP}:id/btn_save
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_share   30s
  #share agenda
  Click Element    ${APP}:id/btn_actionbar_share
  Sleep    4s
  Press Keycode    ${back}
  Sleep    4s
  Press Keycode    ${back}
  #hapus agenda
  Wait Until Page Contains Element    ${APP}:id/txt_info    15s
  Click Element    ${APP}:id/txt_info
  Wait Until Element Is Visible    ${APP}:id/btn_complete   100s
  Click Element    ${APP}:id/btn_overflow
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s

Sedang Hamil Grafik Mom
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Grafik
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_record')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_record')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Grafik')]   100s
  Element Text Should Be    //android.widget.TextView[contains(@text,'Grafik')]    Grafik
  # input data grafik mums
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tvRecordMum')]   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tvRecordMum')]
  #masuk ke halaman input grafik - berat badan sebelum hamil
  ${belumhamil}   Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa berat badan sebelum hamil?')]
  # #untuk swipe bar (belum solve)
  # #ambil kordinat element
  # ${bar}    Get Element Location    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/wheel_view')]
  # ${bar}    Convert To String    ${bar}
  # ${remove}   Remove String    ${bar}    {  '   y   x    :   }
  # Log    ${remove}
  # ${subsx}   Fetch From Right    ${remove}    ,
  # ${subsx}   Fetch From Left    ${subsx}    .0
  # ${subsy}   Fetch From Left    ${remove}    ,
  # ${subsy}  Fetch From Left    ${subsy}    .0
  # ${subsx2}  Fetch From Right    ${remove}    ,
  # ${subsx2}   Fetch From Left    ${subsx2}    .0
  # Log    ${subsx}
  # Log    ${subsy}
  # Click A Point   x=${subsx}  y=${subsy}    10
  # click
  # # # #ubah value untuk digunakan untuk swipe
  # # ${subsx2}    Convert To Integer    ${subsx2}
  # # ${subsx2}   Evaluate    ${subsx2} - 500
  # # #swipe kesamping untuk dapat tips yang diinginkan
  # # : FOR    ${loopCount}    IN RANGE    0    20
  # # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Kesalahan Umum Penggunaan Testpack')]
  # # \    Run Keyword If    ${el}    Exit For Loop
  # # \    Swipe    ${subsx}    ${subsy}    ${subsx2}    ${subsy}
  # # \    ${loopCount}    Set Variable    ${loopCount}+1
  # # Page Should Contain Element    //android.widget.TextView[contains(@text,'44')]
  #langsung klik lanjut
  Run Keyword If    ${belumhamil}    Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
    ...   ELSE IF   '${belumhamil}' == 'False'    Run Keywords    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa berat badan Mums?')]
    ...   AND     Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #masuk ke halaman input berat badan saat ini
  ${saatini}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa berat badan Mums?')]
  Run Keyword If    ${saatini}    Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
    ...   ELSE IF   '${saatini}' == 'False'   Log    berat badan saat ini sudah diisi sebelumnya
  #masuk ke halaman input grafik - tekanan darah
  Sleep    2s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa tekanan darah Ibu?')]    100s
  #langsung klik lanjut
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Mom • Result')]   100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_weight')]    100s
  #cek data yang harusnya tampil setelah diinput
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/indicator_map')][@text='NORMAL']
  #simpan ke grafik
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  #masuk ke halaman grafik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight_mum')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Kenaikan berat badan Mums normal. Pertahankan kenaikan berat ini dengan menjaga pola makan teratur dan konsumsi makanan bernutrisi seimbang.')]
  #pindah ke blood pressure - grafik mom
  ${Location}   Get Element Location    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  ${size}   Get Element Size    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Log    ${Location}
  Log    ${size}
  ${Location}    Convert To String    ${Location}
  ${remove}   Remove String    ${Location}    {  '   y   x    :   }
  Log    ${remove}
  ${locy}   Fetch From Right    ${remove}    ,
  ${locy}   Fetch From Left    ${locy}    .0
  ${locx}   Fetch From Left    ${remove}    ,
  ${locx}  Fetch From Left    ${locx}    .0
  Log    ${locy}
  Log    ${locx}
  #==
  ${size}    Convert To String    ${size}
  ${remove}   Remove String    ${size}    {  '   width   height    :   }
  Log    ${remove}
  ${sizey}   Fetch From Right    ${remove}    ,
  ${sizey}   Fetch From Left    ${sizey}    .0
  ${sizex}   Fetch From Left    ${remove}    ,
  ${sizex}  Fetch From Left    ${sizex}    .0
  Log    ${sizey}
  Log    ${sizex}
  #perhitungan
  ${sizex}    Evaluate    ${sizex} / 2
  ${panjang}    Evaluate    ${locy} + ${sizex}
  ${sizey}    Evaluate    ${sizey} / 2
  ${tinggi}   Evaluate    ${locx} + ${sizey}
  ${clickbadan}    Evaluate    ${panjang} - ${locy}
  ${clickdarah}   Evaluate    ${panjang} + ${locy}
  #pilih blood pressure
  Click A Point   ${clickdarah}    ${tinggi}
  #masuk ke blood pressure
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight_mum')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Pertahankan tekanan darah normal Mums dengan cara menjaga pola makan dan minum banyak air putih. Hindari mengonsumsi makanan yang membuat Mums mual sehingga nafsu makan menurun.')]
  #tambah data via grafik
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]
  #masuk ke halaman input berat badan saat ini
  ${saatini}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa berat badan Mums?')]
  Run Keyword If    ${saatini}    Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
    ...   ELSE IF   '${saatini}' == 'False'   Log    berat badan saat ini sudah diisi sebelumnya
  #masuk ke halaman input grafik - tekanan darah
  Sleep    2s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa tekanan darah Ibu?')]    100s
  #langsung klik lanjut
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Mom • Result')]   100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_weight')]    100s
  #cek data yang harusnya tampil setelah diinput
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/indicator_map')][@text='NORMAL']
  # #[dioff] - ubah tanggal
  # Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_date')]
  # Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]    100s
  # ${tanggal}  Get Element Attribute    //android.view.View[contains(@checked,'true')]    text
  # ${tanggal}  Evaluate    ${tanggal} - 1
  # Log    ${tanggal}
  # Click Element    //android.view.View[contains(@text,'${tanggal}')]
  # Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  #cek halaman result
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Mom • Result')]   100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_weight')]    100s
  #cek data yang harusnya tampil setelah diinput
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/indicator_map')][@text='NORMAL']
  #simpan ke grafik
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  #masuk ke halaman grafik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight_mum')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Kenaikan berat badan Mums normal. Pertahankan kenaikan berat ini dengan menjaga pola makan teratur dan konsumsi makanan bernutrisi seimbang.')]
  #pindah ke blood pressure - grafik mom
  Click A Point   ${clickdarah}    ${tinggi}
  #masuk ke blood pressure
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight_mum')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Pertahankan tekanan darah normal Mums dengan cara menjaga pola makan dan minum banyak air putih. Hindari mengonsumsi makanan yang membuat Mums mual sehingga nafsu makan menurun.')]
  #kembali ke halaman grafik
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #langsung masuk ke halaman grafik mums
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/see_graphic_mum')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/see_graphic_mum')]
  #masuk ke halaman grafik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight_mum')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Kenaikan berat badan Mums normal. Pertahankan kenaikan berat ini dengan menjaga pola makan teratur dan konsumsi makanan bernutrisi seimbang.')]
  #pindah ke blood pressure - grafik mom
  Click A Point   ${clickdarah}    ${tinggi}
  #masuk ke blood pressure
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight_mum')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Pertahankan tekanan darah normal Mums dengan cara menjaga pola makan dan minum banyak air putih. Hindari mengonsumsi makanan yang membuat Mums mual sehingga nafsu makan menurun.')]

Sedang Hamil Grafik Baby
  #kembali ke halaman grafik
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]   30s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #input data grafik baby
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tvRecordJanin')]   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tvRecordJanin')]
  #masuk ke halaman input grafik - berat badan sebelum hamil
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa berat badan Janin?')]    100s
  ${Location}   Get Element Location    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/wheel_view')]
  ${size}   Get Element Size    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/wheel_view')]
  Log    ${Location}
  Log    ${size}
  ${Location}    Convert To String    ${Location}
  ${remove}   Remove String    ${Location}    {  '   y   x    :   }
  Log    ${remove}
  ${locx}   Fetch From Right    ${remove}    ,
  ${locx}   Fetch From Left    ${locx}    .0
  ${locy}   Fetch From Left    ${remove}    ,
  ${locy}  Fetch From Left    ${locy}    .0
  Log    ${locy}
  Log    ${locx}
  #==
  ${size}    Convert To String    ${size}
  ${remove}   Remove String    ${size}    {  '   width   height    :   }
  Log    ${remove}
  ${sizey}   Fetch From Right    ${remove}    ,
  ${sizey}   Fetch From Left    ${sizey}    .0
  ${sizex}   Fetch From Left    ${remove}    ,
  ${sizex}  Fetch From Left    ${sizex}    .0
  Log    ${sizey}
  Log    ${sizex}
  #perhitungan
  ${sizey}    Evaluate    ${sizey} / 2
  ${tinggibar}    Evaluate    ${locy} + ${sizey}
  ${sampingbar}   Evaluate    ${sizex} - ${sizey}
  ${sampingbar}   Evaluate    ${sampingbar} + 50
  Log    ${tinggibar}
  Log    ${sampingbar}
  #klik grafik bar berat janin
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_value')][@text='1']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Click A Point   ${sampingbar}    ${tinggibar}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  # Click A Point   ${sampingbar}    ${tinggibar}
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_value')][@text='1']    100s
  #klik lanjut ke tinggi janin
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #masuk ke halaman panjang janin
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa panjang Janin?')]  100s
  #klik grafik bar panjang janin
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_value')][@text='0,1']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Click A Point   ${sampingbar}    ${tinggibar}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  # Click A Point   ${sampingbar}    ${tinggibar}
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_value')][@text='0,1']    100s
  #klik lanjut ke detak jantung janin
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #masuk ke halaman detak jantung janin
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Detak jantung Janin?')]  100s
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_value')][@text='91']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Click A Point   ${sampingbar}    ${tinggibar}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #masuk ke baby result
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Baby • Result')]   100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_weight')]    100s
  #cek data yang harusnya tampil setelah diinput
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_lenght')][@text='0,1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_heart_rate')][@text='91']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_heartbeat')][@text='Tinggi']
  #simpan ke grafik
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  #masuk ke halaman grafik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_lenght')][@text='0,1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_heart_rate')][@text='91']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Kurangi asupan makanan yang mengandung gula dan karbohidrat tinggi. Selain itu, perbanyak konsumsi sayur dan buah-buahan agar kenaikan berat badan janin normal.')]
  #pindah ke detak jantung - grafik baby
  ${Location}   Get Element Location    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  ${size}   Get Element Size    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Log    ${Location}
  Log    ${size}
  ${Location}    Convert To String    ${Location}
  ${remove}   Remove String    ${Location}    {  '   y   x    :   }
  Log    ${remove}
  ${locy}   Fetch From Right    ${remove}    ,
  ${locy}   Fetch From Left    ${locy}    .0
  ${locx}   Fetch From Left    ${remove}    ,
  ${locx}  Fetch From Left    ${locx}    .0
  Log    ${locy}
  Log    ${locx}
  #==
  ${size}    Convert To String    ${size}
  ${remove}   Remove String    ${size}    {  '   width   height    :   }
  Log    ${remove}
  ${sizey}   Fetch From Right    ${remove}    ,
  ${sizey}   Fetch From Left    ${sizey}    .0
  ${sizex}   Fetch From Left    ${remove}    ,
  ${sizex}  Fetch From Left    ${sizex}    .0
  Log    ${sizey}
  Log    ${sizex}
  #perhitungan
  ${sizex}    Evaluate    ${sizex} / 2
  ${panjang}    Evaluate    ${locy} + ${sizex}
  ${sizey}    Evaluate    ${sizey} / 2
  ${tinggi}   Evaluate    ${locx} + ${sizey}
  ${clickbadan}    Evaluate    ${panjang} - ${locy}
  ${clickjantung}   Evaluate    ${panjang} + ${locy}
  #pilih detak jantung
  Click A Point   ${clickjantung}    ${tinggi}
  # masuk ke blood pressure
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_lenght')][@text='0,1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_heart_rate')][@text='91']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Kondisi Mums yang terserang demam atau penyakit lain di masa kehamilan bisa menyebabkan trakikardia. Cek kondisi Mums ke dokter kandungan agar denyut jantung si kecil kembali normal.')]
  #tambah data via grafik
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]
  #masuk ke halaman input berat badan janin
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa berat badan Janin?')]    100s
  #klik grafik bar berat janin
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_value')][@text='1']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Click A Point   ${sampingbar}    ${tinggibar}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  # Click A Point   ${sampingbar}    ${tinggibar}
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_value')][@text='1']    100s
  #klik lanjut ke tinggi janin
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #masuk ke halaman panjang janin
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa panjang Janin?')]  100s
  #klik grafik bar panjang janin
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_value')][@text='0,1']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Click A Point   ${sampingbar}    ${tinggibar}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  # Click A Point   ${sampingbar}    ${tinggibar}
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_value')][@text='0,1']    100s
  #klik lanjut ke detak jantung janin
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #masuk ke halaman detak jantung janin
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Detak jantung Janin?')]  100s
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_value')][@text='91']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Click A Point   ${sampingbar}    ${tinggibar}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  # Click A Point   ${sampingbar}    ${tinggibar}
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #masuk ke baby result
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Baby • Result')]   100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_weight')]    100s
  #cek data yang harusnya tampil setelah diinput
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_lenght')][@text='0,1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_heart_rate')][@text='91']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_heartbeat')][@text='Tinggi']
  # #ubah tanggal
  # Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_date')]
  # Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]    100s
  # ${tanggal}  Get Element Attribute    //android.view.View[contains(@checked,'true')]    text
  # ${tanggal}  Evaluate    ${tanggal} - 1
  # Log    ${tanggal}
  # Click Element    //android.view.View[contains(@text,'${tanggal}')]
  # Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  #cek halaman result
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Baby • Result')]   100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_weight')]    100s
  #cek data yang harusnya tampil setelah diinput
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_lenght')][@text='0,1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_heart_rate')][@text='91']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_heartbeat')][@text='Tinggi']
  #simpan ke grafik
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  #masuk ke halaman grafik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_lenght')][@text='0,1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_heart_rate')][@text='91']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Kurangi asupan makanan yang mengandung gula dan karbohidrat tinggi. Selain itu, perbanyak konsumsi sayur dan buah-buahan agar kenaikan berat badan janin normal.')]
  #pilih detak jantung
  Click A Point   ${clickjantung}    ${tinggi}
  # masuk ke detak jantung
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_lenght')][@text='0,1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_heart_rate')][@text='91']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Kondisi Mums yang terserang demam atau penyakit lain di masa kehamilan bisa menyebabkan trakikardia. Cek kondisi Mums ke dokter kandungan agar denyut jantung si kecil kembali normal.')]
  #kembali ke halaman grafik
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #langsung masuk ke halaman grafik baby
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/see_graphic_janin')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/see_graphic_janin')]
  #masuk ke halaman grafik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_lenght')][@text='0,1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_heart_rate')][@text='91']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Kurangi asupan makanan yang mengandung gula dan karbohidrat tinggi. Selain itu, perbanyak konsumsi sayur dan buah-buahan agar kenaikan berat badan janin normal.')]
  #pilih detak jantung
  Click A Point   ${clickjantung}    ${tinggi}
  # masuk ke detak jantung
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_lenght')][@text='0,1']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_heart_rate')][@text='91']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Kondisi Mums yang terserang demam atau penyakit lain di masa kehamilan bisa menyebabkan trakikardia. Cek kondisi Mums ke dokter kandungan agar denyut jantung si kecil kembali normal.')]
  #kembali ke halaman grafik
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]

Sedang Hamil Ubah Berat Mums Sebelum Hamil
  #Edit berat badan mums sebelum hamil
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_bb_ibu')]   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_bb_ibu')]
  ${belumhamil}   Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berapa berat badan sebelum hamil?')]
  ${Location}   Get Element Location    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/wheel_view')]
  ${size}   Get Element Size    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/wheel_view')]
  Log    ${Location}
  Log    ${size}
  ${Location}    Convert To String    ${Location}
  ${remove}   Remove String    ${Location}    {  '   y   x    :   }
  Log    ${remove}
  ${locx}   Fetch From Right    ${remove}    ,
  ${locx}   Fetch From Left    ${locx}    .0
  ${locy}   Fetch From Left    ${remove}    ,
  ${locy}  Fetch From Left    ${locy}    .0
  Log    ${locy}
  Log    ${locx}
  #==
  ${size}    Convert To String    ${size}
  ${remove}   Remove String    ${size}    {  '   width   height    :   }
  Log    ${remove}
  ${sizey}   Fetch From Right    ${remove}    ,
  ${sizey}   Fetch From Left    ${sizey}    .0
  ${sizex}   Fetch From Left    ${remove}    ,
  ${sizex}  Fetch From Left    ${sizex}    .0
  Log    ${sizey}
  Log    ${sizex}
  #perhitungan
  ${sizey}    Evaluate    ${sizey} / 2
  ${tinggibar}    Evaluate    ${locy} + ${sizey}
  ${sampingbar}   Evaluate    ${sizex} - ${sizey}
  Log    ${tinggibar}
  Log    ${sampingbar}
  #klik grafik bar berat sebelum hamil
  # Click A Point   ${sampingbar}    ${tinggibar}
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #masuk ke halaman grafik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight_mum')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Kenaikan berat badan Mums normal. Pertahankan kenaikan berat ini dengan menjaga pola makan teratur dan konsumsi makanan bernutrisi seimbang.')]
  #pindah ke blood pressure - grafik mom
  ${Location}   Get Element Location    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  ${size}   Get Element Size    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Log    ${Location}
  Log    ${size}
  ${Location}    Convert To String    ${Location}
  ${remove}   Remove String    ${Location}    {  '   y   x    :   }
  Log    ${remove}
  ${locy}   Fetch From Right    ${remove}    ,
  ${locy}   Fetch From Left    ${locy}    .0
  ${locx}   Fetch From Left    ${remove}    ,
  ${locx}  Fetch From Left    ${locx}    .0
  Log    ${locy}
  Log    ${locx}
  #==
  ${size}    Convert To String    ${size}
  ${remove}   Remove String    ${size}    {  '   width   height    :   }
  Log    ${remove}
  ${sizey}   Fetch From Right    ${remove}    ,
  ${sizey}   Fetch From Left    ${sizey}    .0
  ${sizex}   Fetch From Left    ${remove}    ,
  ${sizex}  Fetch From Left    ${sizex}    .0
  Log    ${sizey}
  Log    ${sizex}
  #perhitungan
  ${sizex}    Evaluate    ${sizex} / 2
  ${panjang}    Evaluate    ${locy} + ${sizex}
  ${sizey}    Evaluate    ${sizey} / 2
  ${tinggi}   Evaluate    ${locx} + ${sizey}
  ${clickbadan}    Evaluate    ${panjang} - ${locy}
  ${clickdarah}   Evaluate    ${panjang} + ${locy}
  #pilih detak jantung
  Click A Point   ${clickdarah}    ${tinggi}
  #masuk ke blood pressure
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='1 Mgg']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight_mum')][@text='40']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='100']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='80']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Pertahankan tekanan darah normal Mums dengan cara menjaga pola makan dan minum banyak air putih. Hindari mengonsumsi makanan yang membuat Mums mual sehingga nafsu makan menurun.')]
  #kembali ke halaman grafik
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #langsung masuk ke halaman grafik mums
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/see_graphic_mum')]    100s


Sedang Hamil Menu Album
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Album
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_album')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_album')]
  Wait Until Element Is Visible    //android.widget.Button[contains(@text,'BUAT ALBUM BARU')]    100s
  Page Should Contain Text    Simpan foto-foto Mums
  #tambah album
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_album')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    Album Sedang Hamil
  Hide Keyboard
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/action_save')]
  #buat album sukses, kembali ke halaman album
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_camera')]    100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Album Sedang Hamil')]
  #ambil foto/gambar
  Click Element    ${APP}:id/layout_upload_photo
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
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
  Click Element    //android.widget.TextView[contains(@text,'Album Sedang Hamil')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Album Sedang Hamil')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Daftar Album')]
  #tambah foto di detail album
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Tambah foto')]
  Click Element    //android.widget.TextView[contains(@text,'Tambah foto')]
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_photo')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Tambah foto')]   100s
  Refresh Halaman
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@index,'1')]   100s
  #edit album
  Click Element    //android.widget.ImageView[contains(@content-desc,'Opsi lainnya')]
  # Click Element    accessibility_id=Opsi lainnya
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Edit')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Edit')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    100s
  #open camera
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Tambah foto')]
  Click Element    //android.widget.TextView[contains(@text,'Tambah foto')]
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_photo')]   100s
  Wait Until Page Contains Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/pb_upload_progress')]   100s
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/pb_upload_progress')]   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_photo')]   100s
  #edit nama album
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Clear Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    Album Sedang Hamil-edit
  Hide Keyboard
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  Wait Until Page Contains    Daftar Album
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Daftar Album')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Album Sedang Hamil-edit')]
  #hapus album
  Click Element    //android.widget.ImageView[contains(@content-desc,'Opsi lainnya')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Hapus')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Hapus')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Apakah anda yakin ingin menghapus Album?')]
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  #kembali ke halaman album
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_album')]   100s
  Page Should Contain Text    Simpan foto-foto Mums

Sedang Hamil Menu Artikel
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Artikel
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_article')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_article')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='${judul_artikel_sedang_hamil_1}']     100s      #wait sampai tampil artikel
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]     #ada tombol cari
  #pilih Artikel
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='${judul_artikel_sedang_hamil_1}']
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #scroll artikel sampai bawah
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
  : FOR    ${loopCount}    IN RANGE    0    50
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='${judul_artikel_sedang_hamil_2}']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='${judul_artikel_sedang_hamil_2}']
  #pilih artikel selanjutnya
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #like artikel
  #Scroll artikel sampai bawah (sampai muncul icon like)
  : FOR    ${loopCount}    IN RANGE    0    50
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_like')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_like')]
  Wait Until Page Does Not Contain Element    ${APP}:id/snackbar_text   10s
  Click Element    ${APP}:id/btn_actionbar_like
  # Wait Until Element Is Visible    ${APP}:id/snackbar_text    10s
  # Element Text Should Be    ${APP}:id/snackbar_text    You have liked this!
  #share articel
  Wait Until Page Does Not Contain Element    ${APP}:id/snackbar_text   100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]
  Wait Until Element Is Visible    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]
  Sleep    2s
  Press Keycode    ${back}
  Wait Until Page Does Not Contain Element    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]
  Sleep    2s


Sedang Hamil Menu Artikel Cari
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #kembali ke artikel sebelumnya
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #cari artikel
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Artikel')][@selected='true']
  #input yang mau dicari
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]    Janin
#   Press Keycode    13
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Makanan yang Membantu Perkembangan Otak Janin')]   100s
  #masuk ke artikelnya
  Click Element    //android.widget.TextView[contains(@text,'Makanan yang Membantu Perkembangan Otak Janin')]
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    10s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #close search artikel kembali ke halaman artikel
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   100s

Sedang Hamil Menu Tips
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Tips
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_tips')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_tips')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Tips')]    100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   #tombol cari
  #pilih tips
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Penyebab Sakit Kepala saat Haid')]   100s
  Click Element    //android.widget.TextView[contains(@text,'Penyebab Sakit Kepala saat Haid')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]    100s
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-tips}   Convert To String    ${lebars}
  ${x2-tips}   Convert To String    ${lebars}
  ${y1-tips}   Convert To String    ${tinggis}
  ${y2-tips}   Evaluate    ${tinggis} - 700
  #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
  : FOR    ${loopCount}    IN RANGE    0    50
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/baseIVArrow')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips}    ${y1-tips}    ${x2-tips}    ${y2-tips}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/baseIVArrow')]
  #pilih artikel selanjutnya
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #Share
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]
  Wait Until Page Contains Element    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]    100s
  Press Keycode    ${back}
  Sleep    2s
  Page Should Not Contain Element    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]   100s
  #keluar dari tips
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   100s

Sedang Hamil Menu Tips Cari
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   #tombol cari
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Tips')][@selected='true']
  #input yang mau dicari
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]    zat besi
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Cukupi Kebutuhan Zat Besi')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Cukupi Kebutuhan Zat Besi')]
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #close search tips kembali ke halaman tips
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_search   100s

Sedang Hamil Menu Home
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #Pilih Home
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_home')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_home')]
  #kembali ke homepage
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]

Sedang Hamil Tambah Anak
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]     100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  # Coachmark Got It
  #Pilih Tambah Anak
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]     100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]
  #pilih tambah anak
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_child')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_child')]
  #msuk ke halaman tambah Anak
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Isi tanggal lahir si Kecil')]   100s
  ${tanggal1}   Get Element Size    //android.widget.NumberPicker[contains(@index,'0')]
  # #untuk swipe date time picker
  # Log    ${tanggal1}
  # ${tanggal1}    Convert To String    ${tanggal1}
  # ${tanggal1}   Remove String    ${tanggal1}    {  '   width   height    :   }
  # Log    ${tanggal1}
  # #ambil nilai height saja
  # ${tanggal1-tinggi}   Fetch From Right    ${tanggal1}    ,
  # Log    ${tanggal1-tinggi}
  #langsung klik lanjut (pakai date sekarang)
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_date_choose')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_date_choose')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Isi nama si Kecil')]    100s
  #isi nama anak & jenis kelamin
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_name')]    ${nama-tambah-anak-sedang-hamil}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.Spinner[contains(@resource-id,'com.temanbumil.android:id/sp_gender')]   100s
  #pilih jenis kelamin
  Click Element    //android.widget.Spinner[contains(@resource-id,'com.temanbumil.android:id/sp_gender')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Laki-laki')]   100s
  Click Element    //android.widget.TextView[contains(@text,'Laki-laki')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Laki-laki')]    100s
  #pilih lanjut
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_newborn_name_choose')]
  #masuk ke halaman isi data sikecil
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Isi data si Kecil saat lahir')]   100s
  #input data berat
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_databerat')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_databerat')]    5
  Hide Keyboard
  #input data panjang
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datatinggi')]
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datatinggi')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datatinggi')]    60
  Hide Keyboard
  #input data lingkar kepala
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datalingkarkepala')]
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datalingkarkepala')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datalingkarkepala')]   40
  Hide Keyboard
  Sleep    1s
  #klik submit
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_newborn_data_choose')]
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_newborn_data_choose')]

Cek Data Sedang Hamil Tambah Anak & Hapus Data Tambah Anak
    #cek homepage newborn
    Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
    Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')]
    # Page Should Contain Element    //android.widget.TextView[contains(@text,'${nama-tambah-anak-program-hamil}')]
    Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']
    #cek data di side menu
    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]    10s
    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
    Coachmark Got It
    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]   100s
    Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]
    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_baby_name')]   100s
    Page Should Contain Element    //android.widget.TextView[contains(@text,'Sedang Hamil')]
    #kembali ke homepage Sedang Hamil
    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Babyku')]
    Click Element    //android.widget.TextView[contains(@text,'Babyku')]
    Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']
    Hapus Data Tambah Anak Sedang Hamil
    Sedang Hamil Menu Home


New Born Menu Checklist
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #masuk ke halaman checklist
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_profile')]  100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_checklist')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_checklist')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Checklist')]
  #checklis sedang hamil
  Newborn Checklist

New Born Menu Agenda
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Agenda
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_agenda')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_agenda')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Agenda')]   100s
  Element Text Should Be    //android.widget.TextView[contains(@text,'Agenda')]    Agenda
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]    100s
  #tambah agenda
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_title')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Tambah Agenda')]
  #input data agenda
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_title')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_title')]    cek ke posyandu
  Hide Keyboard
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_content')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/edit_text_content')]    Imunisasi pertama & vaksin
  Hide Keyboard
  #input tanggal
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_date')]
  Wait Until Element Is Visible    //android.widget.DatePicker[contains(@resource-id,'android:id/datePicker')]   100s
  #pilih tanggal
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]   100s
  #pilih jam
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_time')]
  Wait Until Element Is Visible    //android.view.View[contains(@resource-id,'android:id/radial_picker')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]   100s
  #pilih pengingat
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_time_reminder')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_30m')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_30m')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]   100s
  #pilih simpan
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  Permission_Calendar
  #kembali ke halaman agenda
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Agenda')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'cek ke posyandu')]
  #agenda detail
  Click Element    ${APP}:id/txt_info
  Wait Until Element Is Visible    ${APP}:id/btn_complete   100s
  #ubah jadi complete
  Click Element    ${APP}:id/btn_complete
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Text    UNCOMPLETE
  #ubah jadi uncomplete
  Click Element    ${APP}:id/btn_complete
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Text    COMPLETE
  #edit agenda
  Click Element    ${APP}:id/btn_overflow
  Wait Until Element Is Visible    ${APP}:id/edit   100s
  Click Element    ${APP}:id/edit
  #masuk ke halaman ubah agenda
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  Clear Text    ${APP}:id/edit_text_title
  Tap    ${APP}:id/edit_text_title
  Input Text    ${APP}:id/edit_text_title    cek ke posyandu - Edit
  Hide Keyboard
  #edit pengingat
  Click Element    ${APP}:id/edit_text_time_reminder
  Wait Until Page Contains Element    ${APP}:id/tv_30m    100s
  Click Element    ${APP}:id/tv_15m
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #simpan yang diedit
  Click Element    ${APP}:id/btn_save
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_share   30s
  #share agenda
  Click Element    ${APP}:id/btn_actionbar_share
  Sleep    4s
  Press Keycode    ${back}
  Sleep    4s
  Press Keycode    ${back}
  #hapus agenda
  Wait Until Page Contains Element    ${APP}:id/txt_info    15s
  Click Element    ${APP}:id/txt_info
  Wait Until Element Is Visible    ${APP}:id/btn_complete   100s
  Click Element    ${APP}:id/btn_overflow
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s

New Born Grafik Anak
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Grafik
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_record')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_record')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Grafik')]   100s
  Element Text Should Be    //android.widget.TextView[contains(@text,'Grafik')]    Grafik
  # input data grafik Anak
  # input data berat
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/ivArrowMum')]    100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/ivArrowMum')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berat badan si kecil?')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #input data tinggi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Tinggi badan si kecil?')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #input data lingkar kepala
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lingkar kepala si kecil?')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #cek data yang harusnya tampil setelah diinput
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
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/see_graphic_mum')]   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/see_graphic_mum')]
  #cek halaman grafik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]  100s
  Wait Until Page Contains Element    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button_baby')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]   100s
  #cek halaman berat - grafik anak
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_kesimpulan')][@text='Pola hidup dan makan yang si Kecil jalankan sudah baik. Tetap perhatikan menu makan yang sehat dan aktif bergerak, ya!']
  #pindah ke Tinggi - grafik anak
  ${Location}   Get Element Location    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button_baby')]
  ${size}   Get Element Size    //android.view.View[contains(@resource-id,'com.temanbumil.android:id/switch_button_baby')]
  Log    ${Location}
  Log    ${size}
  ${Location}    Convert To String    ${Location}
  ${remove}   Remove String    ${Location}    {  '   y   x    :   }
  Log    ${remove}
  ${locy}   Fetch From Right    ${remove}    ,
  ${locy}   Fetch From Left    ${locy}    .0
  ${locx}   Fetch From Left    ${remove}    ,
  ${locx}  Fetch From Left    ${locx}    .0
  Log    ${locy}
  Log    ${locx}
  #==
  ${size}    Convert To String    ${size}
  ${remove}   Remove String    ${size}    {  '   width   height    :   }
  Log    ${remove}
  ${sizey}   Fetch From Right    ${remove}    ,
  ${sizey}   Fetch From Left    ${sizey}    .0
  ${sizex}   Fetch From Left    ${remove}    ,
  ${sizex}  Fetch From Left    ${sizex}    .0
  Log    ${sizey}
  Log    ${sizex}
  #perhitungan
  ${sizex}    Evaluate    ${sizex} / 3
  ${panjang}    Evaluate    ${locy} + ${sizex}
  ${sizey}    Evaluate    ${sizey} / 2
  ${tinggi}   Evaluate    ${locx} + ${sizey}
  ${clickberat}    Evaluate    ${panjang} - ${locy}
  ${clicktinggi}    Evaluate    ${panjang} + ${locy}
  ${clickkepala}    Evaluate    (${panjang} * 2) + ${locy}
  # ${clickdarah}   Evaluate    ${panjang} + ${locy}
  # #pilih tinggi
  Click A Point   ${clicktinggi}    ${tinggi}
  #masuk ke tinggi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='New Born']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='4,4']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='53,7']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='36,9']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Si Kecil anda memiliki tinggi yang normal.')]
  # #pilih kepala
  Click A Point   ${clickkepala}    ${tinggi}
  #masuk ke kepala
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='New Born']     100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Kesimpulan :')]     100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='4,4']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='53,7']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='36,9']
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Bayi anda memiliki lingkar kepala yang normal.')]
  #tambah data via grafik
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]    100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_add')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Berat badan si kecil?')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #input data tinggi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Tinggi badan si kecil?')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  #input data lingkar kepala
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Lingkar kepala si kecil?')]    100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_next')]
  # #ubah tanggal
  # Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/edit_text_date')]
  # Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]    100s
  # ${tanggal}  Get Element Attribute    //android.view.View[contains(@checked,'true')]    text
  # ${tanggal}  Evaluate    ${tanggal} - 1
  # Log    ${tanggal}
  # Click Element    //android.view.View[contains(@text,'${tanggal}')]
  # Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  #cek halaman result
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Grafik • Hasil')]   100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/status_weight')]    100s
  # cek data yang harusnya tampil setelah diinput
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


New Born Data Terakhir Janin
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tvRecordJanin')][@text='Data Terakhir Janin']    100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight_janin')][@text='4,4']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_lenght')][@text='53,7']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_heart_rate')][@text='36,9']
  #input data terakhir janin
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tvRecordJanin')][@text='Data Terakhir Janin']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_name')][@text='Isi data si Kecil saat lahir']
  #input berat, panjang dan lingkar kepala
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_berat')]
  Clear Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_berat')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_berat')]    ${BERAT_BAYI}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_tinggi')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_tinggi')]
  Clear Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_tinggi')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_tinggi')]    ${PANJANG_BAYI}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_lingkarkepala')]   100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_lingkarkepala')]
  Clear Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_lingkarkepala')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_child_lingkarkepala')]    ${LINGKAR_BAYI}
  Hide Keyboard
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/btnSimpan')]   100s
  Click Element    //android.widget.TextView[contains(@text,'SIMPAN')]
  #input berhasil
  Wait Until Page Contains Element    //android.widget.FrameLayout[contains(@resource-id,'android:id/content')]   100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'android:id/message')]   100s
  Page Should Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  # #untuk handling appium stuck karena popup -> diclose dan recent apps lagi
  # Press Keycode    3   #home
  # Sleep    1s
  # Press Keycode    187  #recent apps
  Sleep    1s
  # Press Keycode    187  #recent apps
  #cek halaman data terakhir janin
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tvRecordMum')][@text='Grafik Anak']    100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_weight')][@text='${BERAT_BAYI}']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_sistolik')][@text='${PANJANG_BAYI}']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_diastolik')][@text='${LINGKAR_BAYI}']


New Born Menu Album
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Album
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_album')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_album')]
  Wait Until Element Is Visible    //android.widget.Button[contains(@text,'BUAT ALBUM BARU')]    100s
  Page Should Contain Text    Simpan foto-foto Mums
  #tambah album
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_album')]
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    Album Tumbuh Kembang
  Hide Keyboard
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/action_save')]
  #buat album sukses, kembali ke halaman album
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_camera')]    100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Album Tumbuh Kembang')]
  #ambil foto/gambar
  Click Element    ${APP}:id/layout_upload_photo
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']   5s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_photo')]   100s
  # Wait Until Page Contains Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/pb_upload_progress')]   100s
  # Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/pb_upload_progress')]   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_photo')]   100s
  Sleep    2s
  #Ke Edit Album
  Click Element    //android.widget.TextView[contains(@text,'Album Tumbuh Kembang')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Album Tumbuh Kembang')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Daftar Album')]
  #tambah foto di detail album
  Click Element    //android.widget.TextView[contains(@text,'Tambah foto')]
  Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']   10s
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
  #open camera
  Click Element    //android.widget.TextView[contains(@text,'Tambah foto')]
  Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']   10s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_photo')]   100s
  # Wait Until Page Contains Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/pb_upload_progress')]   100s
  # Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/pb_upload_progress')]   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv_photo')]   100s
  #edit nama album
  Clear Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]
  Sleep    1s
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_album_name')]    Album Tumbuh Kembang-edit
  Hide Keyboard
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/btn_save')]
  Wait Until Page Contains    Daftar Album
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Daftar Album')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Album Tumbuh Kembang-edit')]    20s
  #hapus album
  Click Element    //android.widget.ImageView[contains(@content-desc,'Opsi lainnya')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Hapus')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Hapus')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Apakah anda yakin ingin menghapus Album?')]
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  #kembali ke halaman album
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_album')]   100s
  Page Should Contain Text    Simpan foto-foto Mums

New Born Menu Artikel
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
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Artikel
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_article')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_article')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]     #ada tombol cari
  #pilih Artikel
  #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Perawatan Bayi di NICU')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'Perawatan Bayi di NICU')]
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #scroll artikel sampai bawah
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
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='Menyusui']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='Menyusui']
  #pilih artikel selanjutnya
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #like artikel
  #Scroll artikel sampai bawah (sampai muncul icon like)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_like')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-artikel}    ${y1-artikel}    ${x2-artikel}    ${y2-artikel}
  \    ${loopCount}    Set Variable    ${loopCount}+
  Sleep    1s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_like')]
  Wait Until Page Does Not Contain Element    ${APP}:id/snackbar_text   10s
  Click Element    ${APP}:id/btn_actionbar_like
  # Wait Until Element Is Visible    ${APP}:id/snackbar_text    10s
  # Element Text Should Be    ${APP}:id/snackbar_text    You have liked this!
  #share articel
  Wait Until Page Does Not Contain Element    ${APP}:id/snackbar_text   100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]
  Wait Until Element Is Visible    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]
  Sleep    2s
  Press Keycode    ${back}
  Wait Until Page Does Not Contain Element    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]
  Sleep    2s

New Born Menu Artikel Cari
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #kembali ke artikel sebelumnya
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #cari artikel
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Artikel')][@selected='true']
  #input yang mau dicari
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]    Bayi
  #  Press Keycode    13
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Perawatan Bayi di NICU')]   100s
  #masuk ke artikelnya
  Click Element    //android.widget.TextView[contains(@text,'Perawatan Bayi di NICU')]
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    10s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #close search artikel kembali ke halaman artikel
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   100s

New Born Menu Tips
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #masuk ke Tips
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_tips')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_tips')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Tips')]    100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   #tombol cari
  #pilih tips
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Membersihkan Kerak Kepala')]   100s
  Click Element    //android.widget.TextView[contains(@text,'Membersihkan Kerak Kepala')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]    100s
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-tips}   Convert To String    ${lebars}
  ${x2-tips}   Convert To String    ${lebars}
  ${y1-tips}   Convert To String    ${tinggis}
  ${y2-tips}   Evaluate    ${tinggis} - 700
  #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/baseIVArrow')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-tips}    ${y1-tips}    ${x2-tips}    ${y2-tips}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/baseIVArrow')]
  #pilih artikel selanjutnya
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #Share
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_share')]
  Wait Until Page Contains Element    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]    100s
  Press Keycode    ${back}
  Sleep    2s
  Page Should Not Contain Element    //com.android.internal.widget.ViewPager[contains(@resource-id,'android:id/resolver_list')]   100s
  #keluar dari tips
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   100s

New Born Menu Tips Cari
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]   #tombol cari
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Tips')][@selected='true']
  #input yang mau dicari
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]    Bayi
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Tips Memandikan Bayi Baru Lahir')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Tips Memandikan Bayi Baru Lahir')]
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]    100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #close search tips kembali ke halaman tips
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_search   100s

New Born Menu Home
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Coachmark Menu Handle
  #Pilih Home
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_home')]
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_home')]
  #cek homepage newborn
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD RECORD')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']    100s

New Born Tambah Anak
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]     100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  # Coachmark Got It
  #Pilih Tambah Anak
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]     100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]
  Sleep    1s
  #pilih tambah anak
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_child')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_add_child')]
  #msuk ke halaman tambah Anak
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Isi tanggal lahir si Kecil')]   100s
  ${tanggal1}   Get Element Size    //android.widget.NumberPicker[contains(@index,'0')]
  # #untuk swipe date time picker
  # Log    ${tanggal1}
  # ${tanggal1}    Convert To String    ${tanggal1}
  # ${tanggal1}   Remove String    ${tanggal1}    {  '   width   height    :   }
  # Log    ${tanggal1}
  # #ambil nilai height saja
  # ${tanggal1-tinggi}   Fetch From Right    ${tanggal1}    ,
  # Log    ${tanggal1-tinggi}
  #langsung klik lanjut (pakai date sekarang)
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_date_choose')]   100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_q_date_choose')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Isi nama si Kecil')]    100s
  #isi nama anak & jenis kelamin
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_name')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_name')]    ${nama-tambah-anak-newborn}
  Hide Keyboard
  Wait Until Element Is Visible    //android.widget.Spinner[contains(@resource-id,'com.temanbumil.android:id/sp_gender')]   100s
  #pilih jenis kelamin
  Click Element    //android.widget.Spinner[contains(@resource-id,'com.temanbumil.android:id/sp_gender')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Laki-laki')]   100s
  Click Element    //android.widget.TextView[contains(@text,'Laki-laki')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Laki-laki')]    100s
  #pilih lanjut
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_newborn_name_choose')]
  #masuk ke halaman isi data sikecil
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Isi data si Kecil saat lahir')]   100s
  #input data berat
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_databerat')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_databerat')]    5
  Hide Keyboard
  #input data panjang
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datatinggi')]
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datatinggi')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datatinggi')]    60
  Hide Keyboard
  #input data lingkar kepala
  Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datalingkarkepala')]
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datalingkarkepala')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_datalingkarkepala')]   40
  Hide Keyboard
  #klik submit
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_newborn_data_choose')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_newborn_data_choose')]

Cek Data New Born Tambah Anak & Hapus Data Tambah Anak
  #cek homepage newborn
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')]
  # Page Should Contain Element    //android.widget.TextView[contains(@text,'${nama-tambah-anak-program-hamil}')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']
  #cek data di side menu
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]    10s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_child')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_baby_name')]   100s
  #kembali ke homepage Sedang Hamil
  Wait Until Page Contains    ${nama-tambah-anak-newborn}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_baby_name')][@text='${nama-tambah-anak-newborn}']
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #cek homepage newborn
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD RECORD')]   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']    100s
  Hapus Data Tambah Anak Newborn
  New Born Menu Home

Forum
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]     100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #Pilih forum
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_forum')]     100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_forum')]
  Sleep    1s
  #masuk ke halaman forum
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Forum']   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Popular'][@selected='true']
  #pindah ke tab latest
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Latest']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Latest'][@selected='true']    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_kategori')]   100s
  #cari icon bookmark
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-book}   Convert To String    ${lebars}
  ${x2-book}   Convert To String    ${lebars}
  ${y1-book}   Convert To String    ${tinggis}
  ${y2-book}   Evaluate    ${tinggis} - 500
  #Scroll artikel sampai dapat icon bookmark
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-book}    ${y1-book}    ${x2-book}    ${y2-book}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    100s
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')]    Thread berhasil dibookmark
  #cek ke halaman bookmark
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_bookmark')]
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_bookmark')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Bookmark']
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/rp')]    30s
  #unbookmark dari luar thread
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]
  #cek sudah tidak ada bookmark
  Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]   15s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Bookmark Mums masih kosong')]   15s

Forum Masuk ke Thread Detail
  #cek sudah di halaman forum - tab popular
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]  100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_kategori')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Popular'][@selected='true']
  #pindah ke tab latest
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Latest']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Latest'][@selected='true']    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_kategori')]   100s
  #cari thread paling atas & open
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/rp')]    100s
  ${judul}    Get Text    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_name')]
  Log    ${judul}
  Click Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/rp')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_name')][@text='${judul}']   100s
  #masuk ke dalam thread
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/floatingActionButton')]   100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/floatingActionButton')]
  #masuk ke halaman reply
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_toolbar')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'SUBMIT')]   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv1')]  100s
  #attach image
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv1')]
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']   5s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  #setelah click foto - gambar muncul di halaman reply
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_toolbar')]    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'SUBMIT')]   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv1')]  100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/ivDelete1')]
  #hapus gambar
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/ivDelete1')]
  Wait Until Page Contains Element    //android.support.v7.widget.LinearLayoutCompat[contains(@resource-id,'com.temanbumil.android:id/parentPanel')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/ivDelete1')]
  #keluar dari halaman reply - kembali ke thread
  Page Should Contain Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_name')][@text='${judul}']   100s
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/floatingActionButton')]   100s
  #keluar thread
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]   100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #kembali ke halaman latest
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Latest'][@selected='true']    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_kategori')]   100s
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]  100s
  #pindah ke tab popular
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Popular']   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Popular']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Popular'][@selected='true']

Forum Thread Cari
  #search
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search_forum')]
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search_forum')]
  #masuk halaman search
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]  20s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et')]    ${carithread}
  Sleep    1s
  Click A Point    x=665    y=1216
  #pilih thread
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='${carithread}']  20s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='${carithread}']
  #masuk ke thread yang dicari
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='${carithread}']  20s
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/floatingActionButton')]   20s
  #cari tombol report & quote
  #cari icon bookmark
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-book}   Convert To String    ${lebars}
  ${x2-book}   Convert To String    ${lebars}
  ${y1-book}   Convert To String    ${tinggis}
  ${y2-book}   Evaluate    ${tinggis} - 500
  #Scroll thread sampai dapat reply quote
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.LinearLayout[contains(@resource-id,'com.temanbumil.android:id/btnReply')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-book}    ${y1-book}    ${x2-book}    ${y2-book}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'com.temanbumil.android:id/btnReply')]
  Click Element    //android.widget.LinearLayout[contains(@resource-id,'com.temanbumil.android:id/btnReply')]
  #masuk ke reply quote
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_toolbar')][@text='Reply']   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_delete')]    100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv1')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'SUBMIT')]
  #attach image - halaman reply quote
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv1')]
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']   5s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  #kembali ke halaman reply quote
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_toolbar')][@text='Reply']   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_delete')]    100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv1')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'SUBMIT')]
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/ivDelete1')]
  #hapus gambar
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/ivDelete1')]
  Wait Until Page Contains Element    //android.support.v7.widget.LinearLayoutCompat[contains(@resource-id,'com.temanbumil.android:id/parentPanel')]  100s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button1')]
  Wait Until Page Does Not Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/ivDelete1')]
  #hapus quote
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_delete')]
  Wait Until Page Does Not Contain Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/LQuote')]
  #keluar halaman reply quote
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]   100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #kembali ke dalam thread
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_toolbar')][@text='${carithread}']   100s
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/floatingActionButton')]   100s
  #keluar ke hasil search
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]   100s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='${carithread}']  100s

Create thread
  #create thread
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Mulai diskusi')]    100s
  Click Element    //android.widget.TextView[contains(@text,'Mulai diskusi')]
  #pilih kategori thread
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_tbar')][@text='Pilih Kategori']   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/kategori')][@text='Kehamilan']   100s
  Hide Keyboard
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/kategori')][@text='Kehamilan']
  #pilih sub kategori
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_tbar')][@text='Pilih subkategori']
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/etSearch')]  100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/etSearch')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/etSearch')]    ${subkategori}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/kategori')][@text='USG']   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/kategori')][@text='USG']
  #masuk ke halaman new thread
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_tbar')][@text='New Thread']   100s
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btnSubmit')]   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv1')]
  #attach image
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv1')]
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']   5s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]

Create Thread Floating Button
  #cari flotaing button create thread
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-float}   Convert To String    ${lebars}
  ${x2-float}   Convert To String    ${lebars}
  ${y1-float}   Convert To String    ${tinggis}
  ${y2-float}   Evaluate    ${tinggis} - 500
  #Scroll thread sampai dapat reply quote
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/floatingActionButton')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-float}    ${y1-float}    ${x2-float}    ${y2-float}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    2s
  Click Element    //android.widget.ImageButton[contains(@resource-id,'com.temanbumil.android:id/floatingActionButton')]
  #pilih kategori thread
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_tbar')][@text='Pilih Kategori']   100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/kategori')][@text='Kehamilan']   100s
  Hide Keyboard
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/kategori')][@text='Kehamilan']
  #pilih sub kategori
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_tbar')][@text='Pilih subkategori']
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/etSearch')]  100s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/etSearch')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/etSearch')]    ${subkategori}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/kategori')][@text='USG']   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/kategori')][@text='USG']
  #masuk ke halaman new thread
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title_tbar')][@text='New Thread']   100s
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btnSubmit')]   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv1')]
  #attach image
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/iv1')]
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  # Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Recent Aplikasi
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']   5s
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]


Resep
  #pilih menu Resep
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_receipt')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_receipt')]
  #masuk ke menu resep
  ${homeresep}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Resep']   5s
  Run Keyword If    '${homeresep}' == 'False'    Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Resep']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='All'][@selected='true']
  #filter resep
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Filter Resep']    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_filter')]
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_filter')]
  Wait Until Page Contains Element    //android.widget.CheckedTextView[contains(@resource-id,'com.temanbumil.android:id/text_view_checked')][@text='${filterresep}']
  #pilih 8-10 bulan
  Click Element    //android.widget.CheckedTextView[contains(@resource-id,'com.temanbumil.android:id/text_view_checked')][@text='${filterresep}']
  ${sudahchecklist}   Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.CheckedTextView[contains(@resource-id,'com.temanbumil.android:id/text_view_checked')][@text='${filterresep}'][@checked='False']
  Run Keyword If    ${sudahchecklist}    Click Element    //android.widget.CheckedTextView[contains(@resource-id,'com.temanbumil.android:id/text_view_checked')][@text='${filterresep}']

Buka Resep
  ${filterresepUP}  Convert To Uppercase    ${filterresep}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='${filterresepUP}']   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category')][@text='${filterresepUP}']
  #masuk ke detail resep
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_category_receipt')][@text='${filterresep}']
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   20s
  Wait Until Page Contains Element    //android.widget.ScrollView[contains(@resource-id,'com.temanbumil.android:id/nestedScrollView')]    20s
  #bookmark resep - via detil resep
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_bookmarked')]   10s
  : FOR    ${loopCount}    IN RANGE    0    20
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_bookmarked')]
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/snackbar_text')][@text='Resep berhasil dibookmark']
  \    Run Keyword If    ${el}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1

Search Resep
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_search')]
  #masuk ke halaman search
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/etBasic')]   20s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_close')]   20s
  Tap    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/etBasic')]
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/etBasic')]    ${cariresep}
  Click A Point    x=665    y=1216
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='${cariresep}']    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='${cariresep}']
  #masuk ke detail resep
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='${cariresep}']
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]   20s
  Wait Until Page Contains Element    //android.widget.ScrollView[contains(@resource-id,'com.temanbumil.android:id/nestedScrollView')]    20s

Unbookmark Resep
  ${homeresep}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Resep']   5s
  Run Keyword If    '${homeresep}' == 'False'    Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Resep']   100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='All'][@selected='true']
  #pilih tab bookmark
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Bookmark'][@selected='false']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tab')][@text='Bookmark'][@selected='true']    10s
  : FOR    ${loopCount}    IN RANGE    0    999
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Bookmark Mums masih kosong')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_bookmark')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
