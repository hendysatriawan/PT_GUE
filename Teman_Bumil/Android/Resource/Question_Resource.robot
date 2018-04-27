*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
Resource    ../Resource/Login_Resource.robot
*** Variables ***
${NAMA_BAYI}    MyBaby
${BERAT_BAYI}   3
${PANJANG_BAYI}   50
${LINGKAR_BAYI}   33
${NAMA_BAYI_EDIT}   MyBaby-Edit
*** Keywords ***
Question Program Hamil
  Wait Until Element Is Visible    ${APP}:id/tv_content   100s
  Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
  Click Element    ${APP}:id/btn_negative
  #cek masuk ke halaman question
  Wait Until Element Is Visible    ${APP}:id/tv_q_main    100s
  Element Text Should Be    ${APP}:id/tv_q_main    Silakan pilih fitur yang Mums inginkan
  #pilih Program Hamil
  Click Element    ${APP}:id/btn_q_main_vertillity
  Wait Until Element Is Visible    ${APP}:id/tvDescription    100s
  Element Text Should Be    ${APP}:id/tvDescription    Apakah Mums yakin ingin menggunakan fitur Program Hamil?
  #Pilih No
  Click Element    ${APP}:id/txt_negative
  Wait Until Element Is Visible    ${APP}:id/btn_q_main_vertillity    100s
  #tanya lagi
  Click Element    ${APP}:id/btn_q_main_vertillity
  Wait Until Element Is Visible    ${APP}:id/tvDescription    100s
  Element Text Should Be    ${APP}:id/tvDescription    Apakah Mums yakin ingin menggunakan fitur Program Hamil?
  #pilih Yes
  Click Element    ${APP}:id/txt_positive
  Wait Until Element Is Visible    ${APP}:id/tv_title
  Element Text Should Be    ${APP}:id/tv_title    Teman Bumil


Question Kehamilan Sudah
  Wait Until Element Is Visible    ${APP}:id/tv_content   100s
  Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
  Click Element    ${APP}:id/btn_negative
  #cek masuk ke halaman question
  Wait Until Element Is Visible    ${APP}:id/tv_q_main    100s
  Element Text Should Be    ${APP}:id/tv_q_main    Silakan pilih fitur yang Mums inginkan
  #pilih Kehamilan
  Click Element    ${APP}:id/btn_q_main_kehamilan
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

Question Kehamilan Belum
  Wait Until Element Is Visible    ${APP}:id/tv_content   100s
  Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
  Click Element    ${APP}:id/btn_negative
  #cek masuk ke halaman question
  Wait Until Element Is Visible    ${APP}:id/tv_q_main    100s
  Element Text Should Be    ${APP}:id/tv_q_main    Silakan pilih fitur yang Mums inginkan
  #pilih Kehamilan
  Click Element    ${APP}:id/btn_q_main_kehamilan
  Wait Until Element Is Visible    ${APP}:id/tv_q_main    100s
  Element Text Should Be    ${APP}:id/tv_q_main    Apakah Mums sudah dinyatakan hamil oleh dokter?
  #pilih belum
  Click Element    ${APP}:id/btn_q_main_no
  Wait Until Element Is Visible    ${APP}:id/tv_q_testpack    100s
  Element Text Should Be    ${APP}:id/tv_q_testpack    Apa hasil testpack Mums?
  #pertanyaan testpack pilih garis 1
  Click Element    ${APP}:id/btn_q_testpack_line1
  Wait Until Element Is Visible    ${APP}:id/tv_q_hpht    100s
  Element Text Should Be    ${APP}:id/tv_q_hpht    Isi HPHT\n(Hari Pertama Haid Terakhir)
  #Back ke pertanyaan testpack
  Click Element    ${APP}:id/btn_prev
  Wait Until Element Is Visible    ${APP}:id/tv_q_testpack    100s
  Element Text Should Be    ${APP}:id/tv_q_testpack    Apa hasil testpack Mums?
  #pertanyaan testpack pilih garis 2
  Click Element    ${APP}:id/btn_q_testpack_line2
  Wait Until Element Is Visible    ${APP}:id/tv_q_hpht    100s
  Element Text Should Be    ${APP}:id/tv_q_hpht    Isi HPHT\n(Hari Pertama Haid Terakhir)
  #Back ke pertanyaan testpack
  Click Element    ${APP}:id/btn_prev
  Wait Until Element Is Visible    ${APP}:id/tv_q_testpack    100s
  Element Text Should Be    ${APP}:id/tv_q_testpack    Apa hasil testpack Mums?
  #pertanyaan testpack pilih belum
  Click Element    ${APP}:id/btn_q_testpack_no
  Wait Until Element Is Visible    ${APP}:id/tv_q_hpht    100s
  Element Text Should Be    ${APP}:id/tv_q_hpht    Isi HPHT\n(Hari Pertama Haid Terakhir)
  #pilih tanggal HPHT--tanggal sekarang
  Click Element    ${APP}:id/btn_q_hpht_choose  

Question Tumbuh Kembang Positive
  Wait Until Element Is Visible    ${APP}:id/tv_content   100s
  Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
  Click Element    ${APP}:id/btn_negative
  #cek masuk ke halaman question
  Wait Until Element Is Visible    ${APP}:id/tv_q_main    100s
  Element Text Should Be    ${APP}:id/tv_q_main    Silakan pilih fitur yang Mums inginkan
  #pilih Tumbuh Kembang
  Click Element    ${APP}:id/btn_q_main_newborn
  Wait Until Element Is Visible    ${APP}:id/tv_q_date
  Element Text Should Be    ${APP}:id/tv_q_date    Isi tanggal lahir si Kecil
  #pilih tanggal lahir sikecil
  # #input tahun
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  # Press Keycode    ${2}
  # Press Keycode    ${0}
  # Press Keycode    ${1}
  # Press Keycode    ${8}
  # Press Keycode    ${enter}
  # #input bulan
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  # Press Keycode    ${O}
  # Press Keycode    ${K}
  # Press Keycode    ${T}
  # Press Keycode    ${enter}
  # #input tanggal
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  # Press Keycode    ${1}
  # Press Keycode    ${4}
  # Press Keycode    ${enter}
  # Sleep    2s
  #klik pilih
  Click Element    ${APP}:id/btn_q_date_choose
  Wait Until Element Is Visible    ${APP}:id/tv_newborn_name    100s
  #input nama bayi
  Input Text    ${APP}:id/et_newborn_name    ${NAMA_BAYI}
  #pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]
  Wait Until Element Is Visible    android:id/text1
  Element Text Should Be    android:id/text1    Perempuan
  #pilih lanjut
  Click Element    ${APP}:id/btn_newborn_name_choose
  Wait Until Element Is Visible    ${APP}:id/et_newborn_databerat
  #input berat dan panjang
  Input Text    ${APP}:id/et_newborn_databerat    ${BERAT_BAYI}
  Input Text    ${APP}:id/et_newborn_datatinggi    ${PANJANG_BAYI}
  Input Text    ${APP}:id/et_newborn_datalingkarkepala    ${LINGKAR_BAYI}
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

Question Tumbuh Kembang Negative Tanggal
  Wait Until Element Is Visible    ${APP}:id/tv_content   100s
  Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
  Click Element    ${APP}:id/btn_negative
  #cek masuk ke halaman question
  Wait Until Element Is Visible    ${APP}:id/tv_q_main    100s
  Element Text Should Be    ${APP}:id/tv_q_main    Silakan pilih fitur yang Mums inginkan
  #pilih Tumbuh Kembang
  Click Element    ${APP}:id/btn_q_main_newborn
  Wait Until Element Is Visible    ${APP}:id/tv_q_date
  Element Text Should Be    ${APP}:id/tv_q_date    Isi tanggal lahir si Kecil
  #pilih tanggal lahir sikecil -- tanggal lahir lebih besar dari hari ini
  # #input tahun
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  # Press Keycode    ${2}
  # Press Keycode    ${0}
  # Press Keycode    ${1}
  # Press Keycode    ${8}
  # Press Keycode    ${enter}
  #input bulan
  Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  Press Keycode    ${O}
  Press Keycode    ${K}
  Press Keycode    ${T}
  Press Keycode    ${enter}
  # #input tanggal
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  # Press Keycode    ${1}
  # Press Keycode    ${4}
  # Press Keycode    ${enter}
  # Sleep    2s
  #klik pilih
  Click Element    ${APP}:id/btn_q_date_choose

Question Tumbuh Kembang Negative Nama
  Wait Until Element Is Visible    ${APP}:id/tv_content   100s
  Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
  Click Element    ${APP}:id/btn_negative
  #cek masuk ke halaman question
  Wait Until Element Is Visible    ${APP}:id/tv_q_main    100s
  Element Text Should Be    ${APP}:id/tv_q_main    Silakan pilih fitur yang Mums inginkan
  #pilih Tumbuh Kembang
  Click Element    ${APP}:id/btn_q_main_newborn
  Wait Until Element Is Visible    ${APP}:id/tv_q_date
  Element Text Should Be    ${APP}:id/tv_q_date    Isi tanggal lahir si Kecil
  #pilih tanggal lahir sikecil
  # #input tahun
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  # Press Keycode    ${2}
  # Press Keycode    ${0}
  # Press Keycode    ${1}
  # Press Keycode    ${8}
  # Press Keycode    ${enter}
  # #input bulan
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  # Press Keycode    ${O}
  # Press Keycode    ${K}
  # Press Keycode    ${T}
  # Press Keycode    ${enter}
  # #input tanggal
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  # Press Keycode    ${1}
  # Press Keycode    ${4}
  # Press Keycode    ${enter}
  # Sleep    2s
  #klik pilih
  Click Element    ${APP}:id/btn_q_date_choose
  Wait Until Element Is Visible    ${APP}:id/tv_newborn_name    100s
  #pilih jenis kelamin
  Click Element    ${APP}:id/sp_gender
  Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]  2s
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]
  #klik lanjut
  Click Element    ${APP}:id/btn_newborn_name_choose

Question Tumbuh Kembang Negative Gender
  Wait Until Element Is Visible    ${APP}:id/tv_content   100s
  Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
  Click Element    ${APP}:id/btn_negative
  #cek masuk ke halaman question
  Wait Until Element Is Visible    ${APP}:id/tv_q_main    100s
  Element Text Should Be    ${APP}:id/tv_q_main    Silakan pilih fitur yang Mums inginkan
  #pilih Tumbuh Kembang
  Click Element    ${APP}:id/btn_q_main_newborn
  Wait Until Element Is Visible    ${APP}:id/tv_q_date
  Element Text Should Be    ${APP}:id/tv_q_date    Isi tanggal lahir si Kecil
  #pilih tanggal lahir sikecil
  # #input tahun
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[3]/android.widget.EditText
  # Press Keycode    ${2}
  # Press Keycode    ${0}
  # Press Keycode    ${1}
  # Press Keycode    ${8}
  # Press Keycode    ${enter}
  # #input bulan
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.EditText
  # Press Keycode    ${O}
  # Press Keycode    ${K}
  # Press Keycode    ${T}
  # Press Keycode    ${enter}
  # #input tanggal
  # Long Press    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.EditText
  # Press Keycode    ${1}
  # Press Keycode    ${4}
  # Press Keycode    ${enter}
  # Sleep    2s
  #klik pilih
  Click Element    ${APP}:id/btn_q_date_choose
  Wait Until Element Is Visible    ${APP}:id/tv_newborn_name    100s
  #input nama bayi
  Input Text    ${APP}:id/et_newborn_name    ${NAMA_BAYI}
  #klik lanjut
  Click Element    ${APP}:id/btn_newborn_name_choose
