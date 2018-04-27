*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot

*** Keywords ***
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
  Page Should Contain Text    Kesehatan
  #checklist
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #unclick
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.CheckBox


Program Hamil Menu Agenda
  Click Element    ${APP}:id/btn_navigation
  Coachmark Menu Handle
  #masuk ke Agenda
  Wait Until Element Is Visible    ${APP}:id/tv_nav_agenda
  Click Element    ${APP}:id/tv_nav_agenda
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Page Should Contain Text    AGENDA
  #tambah agenda
  Click Element    ${APP}:id/btn_actionbar_add
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Page Should Contain Text    Tambah Agenda
  #input data agenda
  Input Text    ${APP}:id/edit_text_title    Cek Kandungan Ke Dokter
  Input Text    ${APP}:id/edit_text_content    Cek ke bidan untuk secara rutin
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
  #share agenda
  Click Element    ${APP}:id/btn_actionbar_share

Program Hamil Menu Album
  Click Element    ${APP}:id/btn_navigation
  Coachmark Menu Handle
  #masuk ke Menu Album
  Wait Until Element Is Visible    ${APP}:id/tv_nav_album   100s
  Click Element    ${APP}:id/tv_nav_album
  Wait Until Element Is Visible    ${APP}:id/btn_add_album    100s
  Page Should Contain Text    Simpan foto-foto Mums
  #tambah album
  Click Element    ${APP}:id/btn_add_album
  Wait Until Element Is Visible    ${APP}:id/et_album_name    100s
  Input Text    ${APP}:id/et_album_name    Album MyBaby
  Click Element    ${APP}:id/action_save
  #buat album sukses, kembali ke halaman album
  Wait Until Element Is Visible    ${APP}:id/layout_upload_photo    100s
  Page Should Contain Text    Album MyBaby
  #ambil foto
  Click Element    ${APP}:id/layout_upload_photo
  Permission_Confirm
  Permission_Camera
  Permission_Gallery
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s
  Page Should Contain Text    Camera
  
