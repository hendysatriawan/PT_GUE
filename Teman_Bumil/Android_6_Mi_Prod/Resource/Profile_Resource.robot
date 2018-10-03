*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Question_Resource.robot

*** Variables ***
${nama-tambah-anak-sudah-lahir}   Ani sudah lahir

*** Keywords ***
Hapus Data Semua Program
  Click Element    ${APP}:id/btn_navigation
  Coachmark Got It
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile   100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Page Contains Element    ${APP}:id/tv_baby_name   100s
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  : FOR    ${loopCount}    IN RANGE    0    20
  \    Click Element    ${APP}:id/tv_baby_name
  \    Wait Until Element Is Visible    ${APP}:id/delete   100s
  \    Click Element    ${APP}:id/delete
  \    ${data}    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${APP}:id/tv_baby_name   10s
  \    log    ${data}
  \    Run Keyword If    ${data}    Exit For Loop
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Page Should Not Contain Element    ${APP}:id/tv_baby_name   100s

Hapus Data Program Hamil With Coachmark
  Click Element    ${APP}:id/btn_navigation
  Coachmark Got It
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile   100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Program Hamil
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Click Element    ${APP}:id/tv_baby_name
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Page Should Not Contain Text    Program Hamil

Hapus Data Program Hamil Without Coachmark
  Click Element    ${APP}:id/btn_navigation
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile   100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Program Hamil
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Click Element    ${APP}:id/tv_baby_name
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Page Should Not Contain Text    Program Hamil

Hapus Data Kehamilan With Coachmark
  Click Element    ${APP}:id/btn_navigation
  Coachmark Got It
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile     100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Babyku
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar   100s
  Click Element    ${APP}:id/tv_baby_name
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Page Should Not Contain Text    Babyku

Hapus Data Kehamilan Without Coachmark
  Click Element    ${APP}:id/btn_navigation
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile     100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Babyku
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar   100s
  Click Element    ${APP}:id/tv_baby_name
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Page Should Not Contain Text    Babyku

Hapus Data Tumbuh Kembang With Coachmark
  Wait Until Page Does Not Contain Element    ${APP}:id/progress_bar    100s
  Wait Until Page Contains Element    ${APP}:id/btn_navigation
  Click Element    ${APP}:id/btn_navigation
  Coachmark Got It
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile     100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    ${NAMA_BAYI}
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Click Element    ${APP}:id/tv_baby_name
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Wait Until Page Does Not Contain Element    ${APP}:id/tv_baby_name    100s

Hapus Data Tumbuh Kembang Without Coachmark
  Click Element    ${APP}:id/btn_navigation
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile     100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    ${NAMA_BAYI}
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Click Element    ${APP}:id/tv_baby_name
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Wait Until Page Does Not Contain Element    ${APP}:id/tv_baby_name    100s

Ubah Artikel Tumbuh Kembang With Choose Theme
  Wait Until Element Is Visible    ${APP}:id/tv_content   100s
  Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
  Press Keycode    ${back}
  Wait Until Element Is Visible    ${APP}:id/btn_actionbar_setting    100s
  Click Element    ${APP}:id/btn_actionbar_setting
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s
  Element Text Should Be    ${APP}:id/tv_title    Pengaturan
  #pilih artikel
  Click Element    ${APP}:id/rp_subscribe
  Wait Until Element Is Visible    ${APP}:id/tv_header    100s
  #pilih tema
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.CheckedTextView
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[5]/android.widget.CheckedTextView
  Press Keycode    ${back}
  Wait Until Element Is Visible    ${APP}:id/rp_subscribe   100s
  Press Keycode    ${back}
  Wait Until Element Is Visible    ${APP}:id/tv_title   100s

Ubah Artikel Tumbuh Kembang Without Choose Theme
    Wait Until Element Is Visible    ${APP}:id/tv_content   100s
    Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
    Press Keycode    ${back}
    Sleep    2s
    #kembali ke homepage terlebih dahulu
    Press Keycode    ${back}
    Wait Until Element Is Visible    ${APP}:id/tv_content   100s
    Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
    Press Keycode    ${back}
    Wait Until Element Is Visible    ${APP}:id/btn_navigation
    #masuk ke halaman profile
    Click Element    ${APP}:id/btn_navigation
    Coachmark Got It
    Wait Until Element Is Visible    ${APP}:id/tv_nav_profile     100s
    Click Element    ${APP}:id/tv_nav_profile
    # Wait Until Element Is Visible    ${APP}:id/btn_actionbar_setting    100s
    # Page Should Contain Element    ${APP}:id/btn_actionbar_setting
    Click Element    ${APP}:id/btn_actionbar_setting
    Wait Until Element Is Visible    ${APP}:id/tv_title   100s
    Element Text Should Be    ${APP}:id/tv_title    Pengaturan
    #pilih artikel
    Click Element    ${APP}:id/rp_subscribe
    Wait Until Element Is Visible    ${APP}:id/tv_header    100s
    #pilih tema
    Press Keycode    ${back}
    Wait Until Element Is Visible    ${APP}:id/rp_subscribe   100s
    Press Keycode    ${back}
    Wait Until Element Is Visible    ${APP}:id/tv_title   100s

Edit Data Program Hamil With Coachmark          #edit data program hamil menjadi sedang hamil
  Click Element    ${APP}:id/btn_navigation
  Coachmark Got It
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile     100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Program Hamil
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar   100s
  Click Element    ${APP}:id/tv_baby_name
  #ubah status jadi sedang hamil
  Wait Until Element Is Visible    ${APP}:id/txt_status   100s
  Click Element    ${APP}:id/txt_status
  #masuk ke halaman kehamilan
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
  Hide Keyboard
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Press Keycode    ${O}
  Press Keycode    ${K}
  Press Keycode    ${T}
  Press Keycode    ${enter}
  Hide Keyboard
  #input tanggal
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  Press Keycode    ${1}
  Press Keycode    ${4}
  Press Keycode    ${enter}
  Hide Keyboard
  Sleep    2s
  Click Element    ${APP}:id/btn_q_date_choose
  #sukses ubah status
  Wait Until Element Is Visible    ${APP}:id/btn_negative   100s
  Element Text Should Be    ${APP}:id/tv_title    Selamat atas kehamilan Mums!

Edit data sedang hamil with Coachmark             #edit data sedang hamil menjadi sudah lahir
  Click Element    ${APP}:id/btn_navigation
  Coachmark Got It
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile     100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Babyku
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar   100s
  Click Element    ${APP}:id/tv_baby_name
  #ubah status jadi sudah lahir
  Wait Until Element Is Visible    ${APP}:id/sudahLahir   100s
  Click Element    ${APP}:id/sudahLahir
  Wait Until Element Is Visible    ${APP}:id/tv_q_date    100s
  Element Text Should Be    ${APP}:id/tv_q_date    Isi tanggal lahir si Kecil
  #isi tanggal lahir sikecil
  Click Element    ${APP}:id/btn_q_date_choose
  Wait Until Element Is Visible    ${APP}:id/tv_newborn_name    100s
  #input nama bayi
  Input Text    ${APP}:id/et_newborn_name    ${NAMA_BAYI}
  Hide Keyboard
  #pilih jenis kelamin
  Wait Until Element Is Visible    ${APP}:id/sp_gender    100s
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]
  Wait Until Element Is Visible    android:id/text1   100s
  Element Text Should Be    android:id/text1    Perempuan
  #pilih lanjut
  Click Element    ${APP}:id/btn_newborn_name_choose
  Wait Until Element Is Visible    ${APP}:id/et_newborn_databerat   100s
  #input berat dan panjang
  Input Text    ${APP}:id/et_newborn_databerat    ${BERAT_BAYI}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/et_newborn_datatinggi    100s
  Input Text    ${APP}:id/et_newborn_datatinggi    ${PANJANG_BAYI}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/et_newborn_datalingkarkepala   100s
  Input Text    ${APP}:id/et_newborn_datalingkarkepala    ${LINGKAR_BAYI}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_newborn_data_choose    100s
  Click Element    ${APP}:id/btn_newborn_data_choose
  Wait Until Element Is Visible    ${APP}:id/tv_q_theme   100s
  #pilih tema -- dienable bila menggunakan data member baru register
  #Pilih kesehatan
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.CheckedTextView[1]
  #Pilih Menyusui
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.CheckedTextView[2]
  #Pilih MPASI
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.CheckedTextView[3]
  #Pilih Psikologi
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.CheckedTextView[4]
  #Pilih Tumbuh Kembang
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.CheckedTextView[5]
  #pilih submit
  Click Element    ${APP}:id/btn_q_theme_choose
  #sukses ubah status
  Wait Until Element Is Visible    ${APP}:id/btn_negative   100s
  Element Text Should Be    ${APP}:id/tv_title    Selamat untuk kehadiran si Kecil!


Edit Data Sedang Hamil With Coachmark Negative Name                     #edit data sedang hamil menjadi sudah lahir tanpa pilih nama
  Click Element    ${APP}:id/btn_navigation
  Coachmark Got It
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile     100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Babyku
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar   100s
  Click Element    ${APP}:id/tv_baby_name
  #ubah status jadi sudah lahir
  Wait Until Element Is Visible    ${APP}:id/sudahLahir   100s
  Click Element    ${APP}:id/sudahLahir
  Wait Until Element Is Visible    ${APP}:id/tv_q_date    100s
  Element Text Should Be    ${APP}:id/tv_q_date    Isi tanggal lahir si Kecil
  #isi tanggal lahir sikecil
  Click Element    ${APP}:id/btn_q_date_choose
  Wait Until Element Is Visible    ${APP}:id/tv_newborn_name    100s
  #input gender tanpa input nama bayi
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]
  Wait Until Element Is Visible    android:id/text1   100s
  Element Text Should Be    android:id/text1    Perempuan
  #pilih lanjut
  Click Element    ${APP}:id/btn_newborn_name_choose

Edit Data Sedang Hamil With Coachmark Negative Gender             #edit data sedang hamil menjadi sudah lahir tanpa pilih gender
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Babyku
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar   100s
  Click Element    ${APP}:id/tv_baby_name
  #ubah status jadi sudah lahir
  Wait Until Element Is Visible    ${APP}:id/sudahLahir   100s
  Click Element    ${APP}:id/sudahLahir
  Wait Until Element Is Visible    ${APP}:id/tv_q_date    100s
  Element Text Should Be    ${APP}:id/tv_q_date    Isi tanggal lahir si Kecil
  #isi tanggal lahir sikecil
  Click Element    ${APP}:id/btn_q_date_choose
  Wait Until Element Is Visible    ${APP}:id/tv_newborn_name    100s
  #input nama bayi tanpa input gender
  Input Text    ${APP}:id/et_newborn_name    ${NAMA_BAYI}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_newborn_name_choose    100s
  Click Element    ${APP}:id/btn_newborn_name_choose

Edit Data Sedang Hamil With Coachmark Negative Data Anak                  #edit data sedang hamil menjadi sudah lahir tanpa input data anak
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Babyku
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar   100s
  Click Element    ${APP}:id/tv_baby_name
  #ubah status jadi sudah lahir
  Wait Until Element Is Visible    ${APP}:id/sudahLahir   100s
  Click Element    ${APP}:id/sudahLahir
  Wait Until Element Is Visible    ${APP}:id/tv_q_date    100s
  Element Text Should Be    ${APP}:id/tv_q_date    Isi tanggal lahir si Kecil
  #isi tanggal lahir sikecil
  Click Element    ${APP}:id/btn_q_date_choose
  Wait Until Element Is Visible    ${APP}:id/tv_newborn_name    100s
  #input nama
  Input Text    ${APP}:id/et_newborn_name    ${NAMA_BAYI}
  Hide Keyboard
  #input gender
  Wait Until Element Is Visible    ${APP}:id/sp_gender    100s
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]  100s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]
  Wait Until Element Is Visible    android:id/text1   100s
  Element Text Should Be    android:id/text1    Perempuan
  #pilih lanjut
  Click Element    ${APP}:id/btn_newborn_name_choose
  Wait Until Element Is Visible    ${APP}:id/et_newborn_databerat   100s
  #klik lanjut tanpa input lingkar kepala
  Input Text    ${APP}:id/et_newborn_databerat    ${BERAT_BAYI}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/et_newborn_datatinggi    100s
  Input Text    ${APP}:id/et_newborn_datatinggi    ${PANJANG_BAYI}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_newborn_data_choose    100s
  Click Element    ${APP}:id/btn_newborn_data_choose
  #cek pesan
  Wait Until Element Is Visible    android:id/message   100s
  Element Text Should Be    android:id/message    Inputan tidak valid
  #klik ok
  Click Element    android:id/button1

Edit Data Sedang Hamil With Coachmark Negative Tema                       #edit data sedang hamil menjadi sudah lahir tanpa pilih tema artikel
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Babyku
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar   100s
  Click Element    ${APP}:id/tv_baby_name
  #ubah status jadi sudah lahir
  Wait Until Element Is Visible    ${APP}:id/sudahLahir   100s
  Click Element    ${APP}:id/sudahLahir
  Wait Until Element Is Visible    ${APP}:id/tv_q_date    100s
  Element Text Should Be    ${APP}:id/tv_q_date    Isi tanggal lahir si Kecil
  #isi tanggal lahir sikecil
  Click Element    ${APP}:id/btn_q_date_choose
  Wait Until Element Is Visible    ${APP}:id/tv_newborn_name    100s
  #input nama
  Input Text    ${APP}:id/et_newborn_name    ${NAMA_BAYI}
  Hide Keyboard
  #input gender
  Wait Until Element Is Visible    ${APP}:id/sp_gender    100s
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]
  Wait Until Element Is Visible    android:id/text1   100s
  Element Text Should Be    android:id/text1    Perempuan
  #pilih lanjut
  Click Element    ${APP}:id/btn_newborn_name_choose
  Wait Until Element Is Visible    ${APP}:id/et_newborn_databerat   100s
  #input berat dan panjang
  Input Text    ${APP}:id/et_newborn_databerat    ${BERAT_BAYI}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/et_newborn_datatinggi    100s
  Input Text    ${APP}:id/et_newborn_datatinggi    ${PANJANG_BAYI}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/et_newborn_datalingkarkepala   100s
  Input Text    ${APP}:id/et_newborn_datalingkarkepala    ${LINGKAR_BAYI}
  Hide Keyboard
  Click Element    ${APP}:id/btn_newborn_data_choose
  Wait Until Element Is Visible    ${APP}:id/tv_q_theme   100s
  #pilih tema -- dienable bila menggunakan data member baru register -- tanpa pilih tema
  #pilih submit
  Click Element    ${APP}:id/btn_q_theme_choose


Edit Data Tumbuh Kembang With Coachmark
  Click Element    ${APP}:id/btn_navigation
  Coachmark Got It
  Wait Until Element Is Visible    ${APP}:id/tv_nav_profile     100s
  Click Element    ${APP}:id/tv_nav_profile
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    ${NAMA_BAYI}
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar   100s
  Click Element    ${APP}:id/tv_baby_name
  #Edit data tumbuh kembang
  Wait Until Element Is Visible    ${APP}:id/edit   100s
  Click Element    ${APP}:id/edit
  #ubah nama bayi
  Clear Text    ${APP}:id/et_child_name
  Input Text    ${APP}:id/et_child_name    ${NAMA_BAYI_EDIT}
  Hide Keyboard
  Wait Until Element Is Visible    ${APP}:id/btn_save   100s
  Click Element    ${APP}:id/btn_save
  #Cek data yang sudah diubah
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    ${NAMA_BAYI_EDIT}


Edit Data Tumbuh Kembang With Coachmark Negative
    Click Element    ${APP}:id/btn_navigation
    Coachmark Got It
    Wait Until Element Is Visible    ${APP}:id/tv_nav_profile     100s
    Click Element    ${APP}:id/tv_nav_profile
    Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
    Element Text Should Be    ${APP}:id/tv_baby_name    ${NAMA_BAYI}
    Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar   100s
    Click Element    ${APP}:id/tv_baby_name
    #Edit data tumbuh kembang
    Wait Until Element Is Visible    ${APP}:id/edit   100s
    Click Element    ${APP}:id/edit
    #hapus nama bayi lalu cek alert & notifikasi
    Clear Text    ${APP}:id/et_child_name
    Hide Keyboard
    Click Element    ${APP}:id/btn_save
    #cek alert
    Wait Until Element Is Visible    ${APP}:id/snackbar_text    100s
    Element Text Should Be    ${APP}:id/snackbar_text    Silakan lengkapi nama anak


Sedang Hamil Ubah Status Newborn
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]    10s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_navigation')]
  Coachmark Got It
  #masuk ke profile
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_profile')]   100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_nav_profile')]
  Wait Until Page Does Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.ProgressBar    100s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Sedang Hamil')]   100s
  #ubah jadi sudah lahir
  Click Element    //android.widget.TextView[contains(@text,'Sedang Hamil')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_status')][@text='Sudah Lahir']    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_status')][@text='Sudah Lahir']
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
  Input Text    //android.widget.EditText[contains(@resource-id,'com.temanbumil.android:id/et_newborn_name')]    ${nama-tambah-anak-sudah-lahir}
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
  #masuk ke halaman homepage tbn
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_negative')][@text='TUTUP']   100s
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')][@text='Selamat untuk kehadiran si Kecil!']    100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Mums tetap bisa membaca perkembangan si Kecil setelah lahir di Teman Bumil')]
  #tutup popup selamat
  Click Element    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_negative')]
  #untuk handling appium stuck karena popup -> diclose dan recent apps lagi
  Press Keycode    3   #home
  Sleep    1s
  Press Keycode    187  #recent apps
  Sleep    1s
  Press Keycode    187  #recent apps
  Coachmark Got It
  #cek homepage newborn
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD RECORD')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textIdeal')][@text='TUMBUH KEMBANG ANAK']
