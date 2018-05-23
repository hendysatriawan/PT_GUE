*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot

*** Keywords ***
Kembali Ke Homepage Tumbuh Kembang dari Grafik Menu
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke homepage
  Wait Until Element Is Visible    ${APP}:id/tv_nav_home    100s
  Click Element    ${APP}:id/tv_nav_home
  Wait Until Page Does Not Contain Element    ${APP}:id/tv_nav_home
Logout With Coachmark
    Click Element    ${APP}:id/btn_navigation
    Coachmark Menu Handle
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
  Coachmark Menu Handle
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
  Coachmark Menu Handle
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
  Click Element    ${APP}:id/btn_navigation
  Coachmark Menu Handle
  #masuk ke halaman checklist
  Wait Until Element Is Visible    ${APP}:id/tv_nav_checklist
  Click Element    ${APP}:id/tv_nav_checklist
  Wait Until Element Is Visible    ${APP}:id/txt_title    100s
  Page Should Contain Text    Pemeriksaan Laboratorium
  #checklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #unclick
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox

Program Hamil Menu Agenda
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Agenda
  Wait Until Element Is Visible    ${APP}:id/tv_nav_agenda
  Click Element    ${APP}:id/tv_nav_agenda
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Page Should Contain Text    Agenda
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #tambah agenda
  Click Element    ${APP}:id/btn_actionbar_add
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Page Should Contain Text    Tambah Agenda
  #input data agenda
  Tap    ${APP}:id/edit_text_title
  Input Text    ${APP}:id/edit_text_title    Cek Ke bidan
  Hide Keyboard
  Tap    ${APP}:id/edit_text_content
  Input Text    ${APP}:id/edit_text_content    Cek kehamilan apakah, sudah hamil atau belum
  Hide Keyboard
  #input tanggal
  Click Element    ${APP}:id/edit_text_date
  Wait Until Element Is Visible    android:id/date_picker_header_date   100s
  #pilih tanggal
  Click Element    android:id/button1
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #pilih jam
  Click Element    com.temanbumil.android:id/edit_text_time
  Wait Until Element Is Visible    android:id/radial_picker   100s
  Click Element    android:id/button1
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #pilih pengingat
  Click Element    ${APP}:id/edit_text_time_reminder
  Wait Until Page Contains Element    ${APP}:id/tv_30m    100s
  Click Element    ${APP}:id/tv_2h
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #pilih simpan
  Click Element    ${APP}:id/btn_save
  Permission_Calendar
  #kembali ke halaman agenda
  Wait Until Element Is Visible    ${APP}:id/txt_info   100s
  Page Should Contain Element    ${APP}:id/txt_info
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
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Album
  Wait Until Element Is Visible    ${APP}:id/tv_nav_album   100s
  Click Element    ${APP}:id/tv_nav_album
  Wait Until Element Is Visible    ${APP}:id/btn_add_album    100s
  Page Should Contain Text    Simpan foto-foto Mums
  #tambah album
  Click Element    ${APP}:id/btn_add_album
  Wait Until Element Is Visible    ${APP}:id/et_album_name    100s
  Tap    ${APP}:id/et_album_name
  Input Text    ${APP}:id/et_album_name    Album Program Hamil
  Hide Keyboard
  Click Element    ${APP}:id/action_save
  #buat album sukses, kembali ke halaman album
  Wait Until Element Is Visible    ${APP}:id/layout_upload_photo    100s
  Page Should Contain Text    Album Program Hamil
  #ambil foto/gambar
  Click Element    ${APP}:id/layout_upload_photo
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  Wait Until Page Does Not Contain    CAMERA
  #back edit album
  Sleep    3s
  Press Keycode    ${back}
  Sleep    5s
  #Click Text    Album Program Hamil
  Tap    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[1]
  #Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[1]
  Page Should Contain Text    Daftar Album
  #tambah foto di detail album
  Click Element    ${APP}:id/layout_inner_container
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  Wait Until Page Does Not Contain    CAMERA
  Sleep    3s
  Press Keycode    ${back}
  #edit album
  Click Element    accessibility_id=Opsi lainnya
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]
  Wait Until Element Is Visible    ${APP}:id/et_album_name
  #open camera
  Click Element    ${APP}:id/layout_inner_container
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  Wait Until Page Does Not Contain    CAMERA
  Sleep    3s
  Press Keycode    ${back}
  Sleep    3s
  Wait Until Element Is Visible    ${APP}:id/et_album_name
  #edit nama album
  Tap    ${APP}:id/et_album_name
  Clear Text    ${APP}:id/et_album_name
  Input Text    ${APP}:id/et_album_name    Album Program Hamil-edit
  Hide Keyboard
  Click Element    ${APP}:id/btn_save
  Wait Until Page Contains    Daftar Album
  Page Should Contain Text    Album Program Hamil-edit
  #hapus album
  Click Element    accessibility_id=Opsi lainnya
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]
  Wait Until Page Contains    Apakah anda yakin ingin menghapus Album?
  Click Element    android:id/button1
  #kembali ke halaman album
  Wait Until Element Is Visible    ${APP}:id/btn_add_album
  Page Should Contain Text    Simpan foto-foto Mums

Program Hamil Menu Artikel
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Artikel
  Wait Until Element Is Visible    ${APP}:id/tv_nav_article   100s
  Click Element    ${APP}:id/tv_nav_article
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView     100s      #wait sampai tampil artikel
  Page Should Contain Element    ${APP}:id/btn_actionbar_search     #ada tombol cari
  #pilih Artikel
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #scroll artikel sampai bawah
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
  #pilih artikel selanjutnya
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #like artikel
  Swipe    335    1160    335    250
  Click Element    ${APP}:id/btn_actionbar_like
  Wait Until Page Does Not Contain Element    ${APP}:id/snackbar_text   10s
  Click Element    ${APP}:id/btn_actionbar_like
  Wait Until Element Is Visible    ${APP}:id/snackbar_text    10s
  Element Text Should Be    ${APP}:id/snackbar_text    You have liked this!
  #share articel
  Click Element    ${APP}:id/btn_actionbar_share
  Sleep    2s
  Press Keycode    ${back}
  Sleep    2s

Program Hamil Menu Artikel Cari
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Artikel
  Wait Until Element Is Visible    ${APP}:id/tv_nav_article   100s
  Click Element    ${APP}:id/tv_nav_article
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Press Keycode    ${back}
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_search    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_search     #ada tombol cari
  Click Element    ${APP}:id/btn_actionbar_search
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/et   100s
  #input yang mau dicari
  Input Text    ${APP}:id/et    Hamil
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains    Program Hamil   100s
  #close search artikel kembali ke halaman artikel
  Click Element    ${APP}:id/btn_close
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_search   100s

Program Hamil Menu Tips
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Tips
  Wait Until Element Is Visible    ${APP}:id/tv_nav_tips    100s
  Click Element    ${APP}:id/tv_nav_tips
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_search   #tombol cari
  #pilih tips
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Page Should Contain Text    Tips
  #swipe ke bawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    1s
  #klik tips dibawah
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Page Should Contain Text    Tips
  #Share
  Click Element    ${APP}:id/btn_actionbar_share
  Wait Until Page Contains    Bagikan artikel
  Press Keycode    ${back}
  Sleep    2s
  Page Should Not Contain Text    Bagikan artikel
  Click Element    ${APP}:id/btn_actionbar_back
  Click Element    ${APP}:id/btn_actionbar_back

Program Hamil Menu Tips Cari
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_search    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_search   #tombol cari
  Click Element    ${APP}:id/btn_actionbar_search
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/et   100s
  #input yang mau dicari
  Input Text    ${APP}:id/et    Hamil
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains    Trik Hamil    100s
  #close search tips kembali ke halaman tips
  Click Element    ${APP}:id/btn_close
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_search   100s

Program Hamil Menu Home
  Click Element    ${APP}:id/btn_navigation
  #kembali ke homepage
  Wait Until Element Is Visible    ${APP}:id/tv_nav_home    100s
  Click Element    ${APP}:id/tv_nav_home
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/txt_mother   100s

Sedang Hamil Menu Home
  Click Element    ${APP}:id/btn_navigation
  #kembali ke homepage
  Wait Until Element Is Visible    ${APP}:id/tv_nav_home    100s
  Click Element    ${APP}:id/tv_nav_home
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/img_fetus   100s

Sedang Hamil Menu Checklist
  Click Element    ${APP}:id/btn_navigation
  Coachmark Menu Handle
  #masuk ke halaman checklist
  Wait Until Element Is Visible    ${APP}:id/tv_nav_checklist
  Click Element    ${APP}:id/tv_nav_checklist
  Wait Until Element Is Visible    ${APP}:id/txt_title    100s
  Page Should Contain Text    Kesehatan
  #checklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #unclick
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox

Sedang Hamil Menu Agenda
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Agenda
  Wait Until Element Is Visible    ${APP}:id/tv_nav_agenda
  Click Element    ${APP}:id/tv_nav_agenda
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Page Should Contain Text    Agenda
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #tambah agenda
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_add    30s
  Click Element    ${APP}:id/btn_actionbar_add
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Page Should Contain Text    Tambah Agenda
  #input data agenda
  Tap    ${APP}:id/edit_text_title
  Input Text    ${APP}:id/edit_text_title    Cek Kehamilan
  Hide Keyboard
  Tap    ${APP}:id/edit_text_content
  Input Text    ${APP}:id/edit_text_content    Cek perkembangan janin ke bidan
  Hide Keyboard
  #input tanggal
  Click Element    ${APP}:id/edit_text_date
  Wait Until Element Is Visible    android:id/date_picker_header_date   100s
  #pilih tanggal
  Click Element    android:id/button1
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #pilih jam
  Click Element    com.temanbumil.android:id/edit_text_time
  Wait Until Element Is Visible    android:id/radial_picker   100s
  Click Element    android:id/button1
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #pilih pengingat
  Click Element    ${APP}:id/edit_text_time_reminder
  Wait Until Page Contains Element    ${APP}:id/tv_30m    100s
  Click Element    ${APP}:id/tv_2h
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #pilih simpan
  Click Element    ${APP}:id/btn_save
  Permission_Calendar
  #kembali ke halaman agenda
  Wait Until Element Is Visible    ${APP}:id/txt_info   100s
  Page Should Contain Element    ${APP}:id/txt_info
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
  Input Text    ${APP}:id/edit_text_title    Cek Kehamilan - Edit
  Hide Keyboard
  #edit pengingat
  Click Element    ${APP}:id/edit_text_time_reminder
  Wait Until Page Contains Element    ${APP}:id/tv_30m    100s
  Click Element    ${APP}:id/tv_15m
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #simpan yang diedit
  Click Element    ${APP}:id/btn_save
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #share agenda
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_share    30s
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

Sedang Hamil Menu Grafik Mums
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke grafik
  Wait Until Element Is Visible    ${APP}:id/tv_nav_record    100s
  Click Element    ${APP}:id/tv_nav_record
  #masuk ke menu grafik
  Wait Until Element Is Visible    ${APP}:id/see_graphic_mum    100s
  Page Should Contain Text    Grafik Mum
  #input grafik mums
  Click Element    ${APP}:id/tvRecordMumDesc
  #input berat badan sebelum hamil
  Wait Until Element Is Visible    ${APP}:id/wheel_view   100s
  Page Should Contain Text    Berapa berat badan sebelum hamil?
  Click Element    ${APP}:id/btn_next
  #input berat badan saat ini
  Wait Until Element Is Visible    ${APP}:id/wheel_view   100s
  Page Should Contain Text    Berapa berat badan Mums?
  Click Element    ${APP}:id/btn_next
  #input tekanan darah
  Wait Until Element Is Visible    ${APP}:id/diastolik  100s
  Page Should Contain Text    Berapa tekanan darah Ibu?
  Click Element    ${APP}:id/btn_next
  #hasil save ke grafik
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/edit_text_date   100s
  Click Element    ${APP}:id/btn_save
  #show grafik berat badan
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/chart
  Page Should Contain Element    ${APP}:id/chart
  Page Should Contain Text    Grafik Mom
  #pindah tab tekanan darah
  #Click Text    Blood pressure

Sedang Hamil pilih Grafik Berat Badan Mums
  Click A Point   190   325
  Sleep    2s
  Click A Point   545   320
  Sleep    2s
  #ini bikin appium stuck
  # Click Element    ${APP}:id/tv_title
  # Wait Until Element Is Visible    ${APP}:id/mom_weight   100s
  # #pilih grafik berat badan
  # Click Element    ${APP}:id/mom_weight
  # Sleep    3s

Sedang Hamil pilih Grafik Tekanan Darah Mums
  Click A Point   190   325
  Sleep    2s
  Click A Point   545   320
  Sleep    2s
  #ini bikin appium stuck
  # Click Element    ${APP}:id/tv_title
  # Wait Until Element Is Visible    ${APP}:id/mom_blood_pressure   100s
  # #pilih grafik berat badan
  # Click Element    ${APP}:id/mom_blood_pressure
  # Sleep    3s

Sedang Hamil Menu Grafik Anak
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke grafik
  Wait Until Element Is Visible    ${APP}:id/tv_nav_record    100s
  Click Element    ${APP}:id/tv_nav_record
  #masuk ke menu grafik
  Wait Until Element Is Visible    ${APP}:id/see_graphic_janin    100s
  Page Should Contain Text    Grafik Anak
  #input grafik anak
  Click Element    ${APP}:id/tvRecordJaninDesc
  #input berat badan janin
  Wait Until Element Is Visible    ${APP}:id/wheel_view   100s
  Page Should Contain Text    Berapa berat badan Janin?
  #swipe untuk input berat janin
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Click Element    ${APP}:id/btn_next
  #input panjang janin
  Wait Until Element Is Visible    ${APP}:id/wheel_view   100s
  Page Should Contain Text    Berapa panjang Janin?
  #Swipe untuk input panjang janin
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Click Element    ${APP}:id/btn_next
  #input tekanan darah
  Wait Until Element Is Visible    ${APP}:id/wheel_view  100s
  Page Should Contain Text    Detak jantung Janin?
  #swipe untuk input detak jantung
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Swipe    660    870    50    870
  Click Element    ${APP}:id/btn_next
  #hasil save ke grafik
  Wait Until Element Is Visible    ${APP}:id/edit_text_date   100s
  Click Element    ${APP}:id/btn_save
  #show grafik berat badan
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Element    ${APP}:id/chart
  Page Should Contain Text    Grafik baby
  #pindah tab tekanan darah
  #Click Text    Blood pressure

Sedang Hamil pilih Grafik Berat Badan Anak
  Click A Point   190   325
  Sleep    2s
  Click A Point   545   320
  Sleep    2s
  #ini bikin appium stuck
  # Click Element    ${APP}:id/tv_title
  # Wait Until Element Is Visible    ${APP}:id/fetus_weight   100s
  # #pilih grafik berat badan
  # Click Element    ${APP}:id/fetus_weight
  # Sleep    3s

Sedang Hamil pilih Grafik Tekanan Darah Anak
  Click A Point   190   325
  Sleep    2s
  Click A Point   545   320
  Sleep    2s
  #ini bikin appium stuck
  # Click Element    ${APP}:id/tv_title
  # Wait Until Element Is Visible    ${APP}:id/mom_blood_pressure   100s
  # #pilih grafik berat badan
  # Click Element    ${APP}:id/mom_blood_pressure
  # Sleep    3s

Sedang Hamil Menu Album
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Album
  Wait Until Element Is Visible    ${APP}:id/tv_nav_album   100s
  Click Element    ${APP}:id/tv_nav_album
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_add_album    100s
  Page Should Contain Text    Simpan foto-foto Mums
  #tambah album
  Click Element    ${APP}:id/btn_add_album
  Wait Until Element Is Visible    ${APP}:id/et_album_name    100s
  Tap    ${APP}:id/et_album_name
  Input Text    ${APP}:id/et_album_name    Album Sedang Hamil
  Hide Keyboard
  Click Element    ${APP}:id/action_save
  #buat album sukses, kembali ke halaman album
  Wait Until Element Is Visible    ${APP}:id/layout_upload_photo    100s
  Page Should Contain Text    Album Sedang Hamil
  #ambil foto/gambar
  Click Element    ${APP}:id/layout_upload_photo
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  #back edit album
  Sleep    3s
  Press Keycode    ${back}
  Sleep    3s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[1]
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
  Click Element    ${APP}:id/layout_inner_container
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  Sleep    3s
  Press Keycode    ${back}
  Sleep    3s
  Wait Until Element Is Visible    ${APP}:id/et_album_name
  #edit nama album
  Tap    ${APP}:id/et_album_name
  Clear Text    ${APP}:id/et_album_name
  Input Text    ${APP}:id/et_album_name    Album Sedang Hamil-edit
  Hide Keyboard
  Click Element    ${APP}:id/btn_save
  Wait Until Page Contains    Daftar Album
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Text    Album Sedang Hamil-edit
  #hapus album
  Click Element    accessibility_id=Opsi lainnya
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]
  Wait Until Page Contains    Apakah anda yakin ingin menghapus Album?
  Click Element    android:id/button1
  #kembali ke halaman album
  Wait Until Element Is Visible    ${APP}:id/btn_add_album
  Page Should Contain Text    Simpan foto-foto Mums

Sedang Hamil Menu Artikel
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Artikel
  Wait Until Element Is Visible    ${APP}:id/tv_nav_article   100s
  Click Element    ${APP}:id/tv_nav_article
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView     100s      #wait sampai tampil artikel
  Page Should Contain Element    ${APP}:id/btn_actionbar_search     #ada tombol cari
  #pilih Artikel
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #scroll artikel sampai bawah
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
  #pilih artikel selanjutnya
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #like articel
  Swipe    335    1160    335    250
  Click Element    ${APP}:id/btn_actionbar_like
  Wait Until Page Does Not Contain Element    ${APP}:id/snackbar_text   10s
  Click Element    ${APP}:id/btn_actionbar_like
  Wait Until Element Is Visible    ${APP}:id/snackbar_text    10s
  Element Text Should Be    ${APP}:id/snackbar_text    You have liked this!
  #share articel
  Click Element    ${APP}:id/btn_actionbar_share
  Sleep    2s
  Press Keycode    ${back}
  Sleep    2s

Sedang Hamil Menu Artikel Cari
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Artikel
  Wait Until Element Is Visible    ${APP}:id/tv_nav_article   100s
  Click Element    ${APP}:id/tv_nav_article
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Press Keycode    ${back}
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView     100s      #wait sampai tampil artikel
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_search    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_search     #ada tombol cari
  Click Element    ${APP}:id/btn_actionbar_search
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/et   100s
  #input yang mau dicari
  Input Text    ${APP}:id/et    Babymoon
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #close search artikel kembali ke halaman artikel
  Click Element    ${APP}:id/btn_close
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_search   100s

Sedang Hamil Menu Artikel Filter
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Artikel
  Wait Until Element Is Visible    ${APP}:id/tv_nav_article   100s
  Click Element    ${APP}:id/tv_nav_article
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView     100s      #wait sampai tampil artikel
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_filter    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_filter     #ada tombol filter
  Click Element    ${APP}:id/btn_actionbar_filter
  #masuk ke halaman Filter
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains    Kategori Filter
  #click unchecklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[4]/android.widget.CheckedTextView
  #click checklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[4]/android.widget.CheckedTextView

Sedang Hamil Menu Tips
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Tips
  Wait Until Element Is Visible    ${APP}:id/tv_nav_tips    100s
  Click Element    ${APP}:id/tv_nav_tips
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_search   #tombol cari
  #pilih tips
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  #swipe ke bawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    1s
  #klik tips dibawah
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_share
  #Share
  Click Element    ${APP}:id/btn_actionbar_share
  Wait Until Page Contains    Bagikan artikel
  Press Keycode    ${back}
  Sleep    2s
  Page Should Not Contain Text    Bagikan artikel
  Click Element    ${APP}:id/btn_actionbar_back
  Click Element    ${APP}:id/btn_actionbar_back

Sedang Hamil Menu Tips Cari
  Page Should Contain Element    ${APP}:id/btn_actionbar_search   #tombol cari
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_search    100s
  Click Element    ${APP}:id/btn_actionbar_search
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/et   100s
  #input yang mau dicari
  Input Text    ${APP}:id/et    Babymoon
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #close search tips kembali ke halaman tips
  Click Element    ${APP}:id/btn_close
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_search   100s


Tumbuh Kembang Menu Checklist
  Click Element    ${APP}:id/btn_navigation
  Coachmark Menu Handle
  #masuk ke halaman checklist
  Wait Until Element Is Visible    ${APP}:id/tv_nav_checklist
  Click Element    ${APP}:id/tv_nav_checklist
  Wait Until Element Is Visible    ${APP}:id/txt_title    100s
  Page Should Contain Text    Perawatan di Rumah
  #checklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #unclick
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox

Tumbuh Kembang Menu Agenda
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Agenda
  Wait Until Element Is Visible    ${APP}:id/tv_nav_agenda
  Click Element    ${APP}:id/tv_nav_agenda
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Page Should Contain Text    Agenda
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #tambah agenda
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_add    30s
  Click Element    ${APP}:id/btn_actionbar_add
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Page Should Contain Text    Tambah Agenda
  #input data agenda
  Tap    ${APP}:id/edit_text_title
  Input Text    ${APP}:id/edit_text_title    Cek Tumbuh Kembang
  Hide Keyboard
  Tap    ${APP}:id/edit_text_content
  Input Text    ${APP}:id/edit_text_content    Cek perkembangan Anak ke posyandu
  Hide Keyboard
  #input tanggal
  Click Element    ${APP}:id/edit_text_date
  Wait Until Element Is Visible    android:id/date_picker_header_date   100s
  #pilih tanggal
  Click Element    android:id/button1
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #pilih jam
  Click Element    com.temanbumil.android:id/edit_text_time
  Wait Until Element Is Visible    android:id/radial_picker   100s
  Click Element    android:id/button1
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #pilih pengingat
  Click Element    ${APP}:id/edit_text_time_reminder
  Wait Until Page Contains Element    ${APP}:id/tv_30m    100s
  Click Element    ${APP}:id/tv_2h
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #pilih simpan
  Click Element    ${APP}:id/btn_save
  Permission_Calendar
  #kembali ke halaman agenda
  Wait Until Element Is Visible    ${APP}:id/txt_info   100s
  Page Should Contain Element    ${APP}:id/txt_info
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
  Input Text    ${APP}:id/edit_text_title    Cek Tumbuh Kembang - Edit
  Hide Keyboard
  #edit pengingat
  Click Element    ${APP}:id/edit_text_time_reminder
  Wait Until Page Contains Element    ${APP}:id/tv_30m    100s
  Click Element    ${APP}:id/tv_15m
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  #simpan yang diedit
  Click Element    ${APP}:id/btn_save
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_share   10s
  #share agenda
  Click Element    ${APP}:id/btn_actionbar_share
  Sleep    5s
  Press Keycode    ${back}
  Sleep    5s
  Press Keycode    ${back}
  #hapus agenda
  Click Element    ${APP}:id/txt_info
  Wait Until Element Is Visible    ${APP}:id/btn_complete   100s
  Click Element    ${APP}:id/btn_overflow
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s

Tumbuh Kembang Menu Grafik Anak
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke grafik
  Wait Until Element Is Visible    ${APP}:id/tv_nav_record    100s
  Click Element    ${APP}:id/tv_nav_record
  #masuk ke menu grafik
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/see_graphic_mum    100s
  Page Should Contain Text    Grafik Anak
  #input grafik mums
  Click Element    ${APP}:id/tvRecordMumDesc
  #input berat badan sikecil
  Wait Until Element Is Visible    ${APP}:id/wheel_view   100s
  Page Should Contain Text    Berat badan si kecil?
  Click Element    ${APP}:id/btn_next
  #input tinggi badan sikecil
  Wait Until Element Is Visible    ${APP}:id/wheel_view   100s
  Page Should Contain Text    Tinggi badan si kecil?
  Click Element    ${APP}:id/btn_next
  #input lingkar kepala sikecil
  Wait Until Element Is Visible    ${APP}:id/wheel_view   100s
  Page Should Contain Text    Lingkar kepala si kecil?
  Click Element    ${APP}:id/btn_next
  #hasil save ke grafik
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/edit_text_date   100s
  Click Element    ${APP}:id/btn_save
  #muncul pesan informasi berhasil
  Wait Until Element Is Visible    android:id/message   100s
  Page Should Contain Text    Proses berhasil!
  Click Element    android:id/button1
  Sleep    3s

Tumbuh Kembang Grafik Data Terakhir Janin
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke grafik
  Wait Until Element Is Visible    ${APP}:id/tv_nav_record    100s
  Click Element    ${APP}:id/tv_nav_record
  #masuk ke menu grafik
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/see_graphic_mum    100s
  Page Should Contain Text    Data Terakhir Janin
  #input grafik anak
  Click Element    ${APP}:id/tvRecordJaninDesc
  #input berat badan janin
  Wait Until Element Is Visible    ${APP}:id/placeholder   100s
  Page Should Contain Text    Isi data si Kecil saat lahir
  #edit berat lahir anak
  Clear Text    ${APP}:id/et_child_berat
  Input Text    ${APP}:id/et_child_berat    5
  Hide Keyboard
  #edit panjang saat lahir
  Clear Text    ${APP}:id/et_child_tinggi
  Input Text    ${APP}:id/et_child_tinggi    50
  Hide Keyboard
  #edit lingkar kepala
  Clear Text    ${APP}:id/et_child_lingkarkepala
  Input Text    ${APP}:id/et_child_lingkarkepala    45
  Hide Keyboard
  Click Element    ${APP}:id/btnSimpan
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #muncul pesan informasi berhasil
  Wait Until Element Is Visible    android:id/message   100s
  Page Should Contain Text    Proses berhasil!
  Click Element    android:id/button1
  Sleep    2s

Tumbuh Kembang Lihat Grafik Anak
  Wait Until Element Is Visible    ${APP}:id/btn_navigation   100s
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke grafik
  Wait Until Element Is Visible    ${APP}:id/tv_nav_record    100s
  Click Element    ${APP}:id/tv_nav_record
  #masuk ke menu grafik
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/see_graphic_mum    100s
  Page Should Contain Text    Grafik Anak
  #see grafik
  Click Element    ${APP}:id/see_graphic_mum
  #input berat badan janin
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/switch_button_baby   100s
  Wait Until Element Is Visible    ${APP}:id/chart  100s
  Page Should Contain Text    New Born
  #pindah tab ke Tinggi
  Click A Point   350   333
  Sleep    3s
  #pindah tab ke Kepala
  Click A Point   580   333
  Sleep    3s
  #pindah tab ke Berat
  Click A Point   140   333
  Sleep    3s


Tumbuh Kembang Menu Album
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Album
  Wait Until Element Is Visible    ${APP}:id/tv_nav_album   100s
  Click Element    ${APP}:id/tv_nav_album
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_add_album    100s
  Page Should Contain Text    Simpan foto-foto Mums
  #tambah album
  Click Element    ${APP}:id/btn_add_album
  Wait Until Element Is Visible    ${APP}:id/et_album_name    100s
  Tap    ${APP}:id/et_album_name
  Input Text    ${APP}:id/et_album_name    Album Tumbuh Kembang
  Hide Keyboard
  Click Element    ${APP}:id/action_save
  #buat album sukses, kembali ke halaman album
  Wait Until Element Is Visible    ${APP}:id/layout_upload_photo    100s
  Page Should Contain Text    Album Tumbuh Kembang
  #ambil foto/gambar
  Click Element    ${APP}:id/layout_upload_photo
  Permission_Confirm    #pilih confirm saat tampil message konfirmasi
  Permission_Camera     #allow permission camera
  Permission_Gallery    #allow permission Galery
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  #back edit album
  Sleep    5s
  Press Keycode    ${back}
  Sleep    5s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[1]
  Page Should Contain Text    Daftar Album
  #tambah foto di detail album
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Click Element    ${APP}:id/layout_inner_container
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  Sleep    5s
  Press Keycode    ${back}
  #edit album
  Click Element    accessibility_id=Opsi lainnya
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]
  Wait Until Element Is Visible    ${APP}:id/et_album_name
  #open camera
  Click Element    ${APP}:id/layout_inner_container
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Page Should Contain Text    CAMERA
  Click Text    CAMERA
  Sleep    5s
  Press Keycode    ${back}
  #edit nama album
  Tap    ${APP}:id/et_album_name
  Clear Text    ${APP}:id/et_album_name
  Input Text    ${APP}:id/et_album_name    Album Sedang Hamil-edit
  Hide Keyboard
  Click Element    ${APP}:id/btn_save
  Wait Until Page Contains    Daftar Album
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Page Should Contain Text    Album Sedang Hamil-edit
  #hapus album
  Click Element    accessibility_id=Opsi lainnya
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]
  Wait Until Page Contains    Apakah anda yakin ingin menghapus Album?
  Click Element    android:id/button1
  #kembali ke halaman album
  Wait Until Element Is Visible    ${APP}:id/btn_add_album
  Page Should Contain Text    Simpan foto-foto Mums

Tumbuh Kembang Menu Artikel
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Artikel
  Wait Until Element Is Visible    ${APP}:id/tv_nav_article   100s
  Click Element    ${APP}:id/tv_nav_article
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView     100s      #wait sampai tampil artikel
  Page Should Contain Element    ${APP}:id/btn_actionbar_search     #ada tombol cari
  #pilih Artikel
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #scroll artikel sampai bawah
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
  #pilih artikel selanjutnya
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #like articel
  Swipe    335    1160    335    250
  Click Element    ${APP}:id/btn_actionbar_like
  Wait Until Page Does Not Contain Element    ${APP}:id/snackbar_text   10s
  Click Element    ${APP}:id/btn_actionbar_like
  Wait Until Element Is Visible    ${APP}:id/snackbar_text    10s
  Element Text Should Be    ${APP}:id/snackbar_text    You have liked this!
  #share articel
  Click Element    ${APP}:id/btn_actionbar_share
  Sleep    2s
  Press Keycode    ${back}
  Sleep    2s

Tumbuh Ke Kembang Menu Artikel Cari
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Artikel
  Wait Until Element Is Visible    ${APP}:id/tv_nav_article   100s
  Click Element    ${APP}:id/tv_nav_article
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Press Keycode    ${back}
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView     100s      #wait sampai tampil artikel
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_search    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_search     #ada tombol cari
  Click Element    ${APP}:id/btn_actionbar_search
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/et   100s
  #input yang mau dicari
  Input Text    ${APP}:id/et    Babymoon
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #close search artikel kembali ke halaman artikel
  Click Element    ${APP}:id/btn_close
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_search   100s

Tumbuh Kembang Menu Artikel Filter
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Artikel
  Wait Until Element Is Visible    ${APP}:id/tv_nav_article   100s
  Click Element    ${APP}:id/tv_nav_article
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView     100s      #wait sampai tampil artikel
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_filter    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_filter     #ada tombol filter
  Click Element    ${APP}:id/btn_actionbar_filter
  #masuk ke halaman Filter
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains    Kategori Filter
  #click unchecklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[4]/android.widget.CheckedTextView
  #click checklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[4]/android.widget.CheckedTextView

Tumbuh Kembang Menu Tips
  Click Element    ${APP}:id/btn_navigation
  #Coachmark Menu Handle
  #masuk ke Menu Tips
  Wait Until Element Is Visible    ${APP}:id/tv_nav_tips    100s
  Click Element    ${APP}:id/tv_nav_tips
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_search   #tombol cari
  #pilih tips
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  #swipe ke bawah
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Swipe    335    1160    335    250
  Sleep    1s
  #klik tips dibawah
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.LinearLayout
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/iv_author    100s
  Page Should Contain Element    ${APP}:id/btn_actionbar_share
  #Share
  Click Element    ${APP}:id/btn_actionbar_share
  Wait Until Page Contains    Bagikan artikel
  Press Keycode    ${back}
  Sleep    2s
  Page Should Not Contain Text    Bagikan artikel
  Click Element    ${APP}:id/btn_actionbar_back
  Click Element    ${APP}:id/btn_actionbar_back

Tumbuh Kembang Menu Tips Cari
  Page Should Contain Element    ${APP}:id/btn_actionbar_search   #tombol cari
  Wait Until Page Contains Element    ${APP}:id/btn_actionbar_search    100s
  Click Element    ${APP}:id/btn_actionbar_search
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/et   100s
  #input yang mau dicari
  Input Text    ${APP}:id/et    Babymoon
  Click A Point    x=665    y=1216
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  #close search tips kembali ke halaman tips
  Click Element    ${APP}:id/btn_close
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_search   100s
