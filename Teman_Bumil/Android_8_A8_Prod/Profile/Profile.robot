*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Question_Resource.robot
Resource    ../Resource/Profile_Resource.robot
Resource    ../Resource/DrawerMenu_Resource.robot
*** Test Cases ***
1.Edit Dan Hapus Progam Hamil
  Log    Ubah Status dari Program Hamil Menjadi Hamil pada halaman profile lalu hapus data sedang hamil
  Login Valid
  Question Program Hamil
  Coachmark Got It
  Edit Data Program Hamil With Coachmark          #ubah data program hamil jadi sedang hamil
  Capture Page Screenshot     filename=Edit data program hamil menjadi sudah hamil.png
  Click Element    ${APP}:id/btn_negative         #tampil notif 'selamat sudah lahir', lalu klik button tutup
  Coachmark Got It
  Hapus Data Kehamilan With Coachmark             #hapus data sedang hamil
  Close Application

2.Edit dan Hapus Program Hamil 2 Data
  Log    Ubah status dari program hamil menjadi sedang hamil, ubah lagi menjadi sudah lahir. lalu buat lagi program hamil lalu hapus data program hamil
  Login Valid
  Question Kehamilan Sudah
  Coachmark Got It
  Edit data sedang hamil with Coachmark             #ubah data sedang hamil jadi sudah lahir
  Click Element    ${APP}:id/btn_negative         #tampil notif 'selamat sudah lahir', lalu klik button tutup
  Coachmark Got It
  Tambah Data Program Hamil With Coachmark
  Coachmark Got It
  Hapus Data Program Hamil With Coachmark
  Capture Page Screenshot   filename=Edit & Hapus data program hamil saat ada 2 data.png
  #hapus data yang sudah lahir agar data bersih kembali
  Click Element    ${APP}:id/tv_baby_name
  Wait Until Element Is Visible    ${APP}:id/delete
  Click Element    ${APP}:id/delete
  Page Should Not Contain Text    ${NAMA_BAYI}
  #ubah artikel agar saat create new born muncul tema / artikel
  Ubah Artikel Tumbuh Kembang With Choose Theme
  Close Application

3.Edit Dan Hapus Sedang Hamil
  Log    Ubah Status dari sedang hamil menjadi sudah lahir pada halaman profile, lalu hapus data sudah lahir
  Login Valid
  Question Kehamilan Sudah
  Coachmark Got It
  Edit data sedang hamil with Coachmark           #ubah data sedang hamil jadi sudah lahir
  Click Element    ${APP}:id/btn_negative         #tampil notif 'selamat sudah lahir', lalu klik button tutup
  Coachmark Got It
  Capture Page Screenshot   filename=Edit dan Hapus Sedang Hamil.png
  Hapus Data Tumbuh Kembang With Coachmark
  Ubah Artikel Tumbuh Kembang With Choose Theme
  Close Application

4.Edit Sedang Hamil Negative dan Hapus data
  Log    Ubah status menjadi lahir dan lakukan test negative pada inputan nama, gender, data anak & tema. lalu hapus data sedang hamil
  Login Valid
  Question Kehamilan Sudah
  Coachmark Got It
  Edit Data Sedang Hamil With Coachmark Negative Name
  #Capture alert / notif
  Capture Page Screenshot   filename=Edit Sedang Hamil jadi Lahir tanpa input nama.png
  #tambahkan back -- untuk kembali ke halaman profile
  Sleep    1s
  Press Keycode    ${back}
  #jalankan edit data sedang hamil tanpa pilih gender
  Edit Data Sedang Hamil With Coachmark Negative Gender
  #Capture alert / notif
  Capture Page Screenshot   filename=Edit Sedang Hamil jadi Lahir tanpa input gender.png
  #tambahkan back -- untuk kembali ke halaman profile
  Press Keycode    ${back}      #untuk close keyboard
  Sleep    1s
  Press Keycode    ${back}
  #jalankan edit data sedang hamil tanpa input data bayi lengkap
  Edit Data Sedang Hamil With Coachmark Negative Data Anak
  #Capture alert / notif
  Capture Page Screenshot   filename=Edit Sedang Hamil jadi Lahir Tanpa Input Data Bayi.png
  #tambahkan back -- untuk kembali ke halaman profile
  Sleep    1s
  Press Keycode    ${back}
  #Jalankan edit data sedang hamil tanpa pilih tema
  Edit Data Sedang Hamil With Coachmark Negative Tema
  #Capture alert / notif
  Capture Page Screenshot   filename=Edit Sedang hamil jadi lahir tanpa pilih tema.png
  #tambahkan back -- untuk kembali ke halaman profile
  Sleep    1s
  Press Keycode    ${back}
  #Hapus data yang sudah dibuat agar data bersih kembali
  Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
  Element Text Should Be    ${APP}:id/tv_baby_name    Babyku
  Click Element    ${APP}:id/tv_baby_name
  #hapus data
  Wait Until Element Is Visible    ${APP}:id/delete   100s
  Click Element    ${APP}:id/delete
  #Cek data sudah dihapus semua
  Wait Until Element Is Visible    ${APP}:id/tv_content
  Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
  Close Application

5.Edit dan hapus data sedang hamil 2 data
  Log    Ubah Status dari sedang hamil menjadi sudah lahir pada halaman profile, lalu tambah data sedang hamil dan hapus data sedang hamil. lalu bersihkan data
  Login Valid
  Question Tumbuh Kembang Positive
  Coachmark Got It
  Tambah Data Sedang Hamil With Coachmark
  Hapus Data Kehamilan With Coachmark
  Capture Page Screenshot   filename=Edit & Hapus data Sedang Hamil saat ada 2 data.png
  #hapus data yang sudah lahir agar data bersih kembali
    Click Element    ${APP}:id/tv_baby_name
    Wait Until Element Is Visible    ${APP}:id/delete
    Click Element    ${APP}:id/delete
    Page Should Not Contain Text    ${NAMA_BAYI}
    #ubah artikel agar saat create new born muncul tema / artikel
    Ubah Artikel Tumbuh Kembang Without Choose Theme
    Close Application

6.Edit Dan Hapus Data Tumbuh Kembang
  Log    Buat data tumbuh kembang, lalu edit data. lalu hapus untuk bersihkan data
  Login Valid
  Question Tumbuh Kembang Positive
  Coachmark Got It
  Edit Data Tumbuh Kembang With Coachmark
  Capture Page Screenshot   filename=Edit & Hapus data tumbuh kembang (new born).png
  #hapus data yang sudah lahir agar data bersih kembali
  Click Element    ${APP}:id/tv_baby_name
  Wait Until Element Is Visible    ${APP}:id/delete
  Click Element    ${APP}:id/delete
  Page Should Not Contain Text    ${NAMA_BAYI_EDIT}
  #ubah artikel agar saat create new born muncul tema / artikel
  Ubah Artikel Tumbuh Kembang Without Choose Theme
  Close Application

7.Edit Dan Hapus Data Tumbuh Kembang negative
    Log    Buat data tumbuh kembang, lalu edit data dengan hapus salah satu isi field. lalu back dan hapus untuk bersihkan data
    Login Valid
    Question Tumbuh Kembang Positive
    Coachmark Got It
    Edit Data Tumbuh Kembang With Coachmark Negative
    Capture Page Screenshot   filename=Edit & Hapus data tumbuh kembang (new born) Negative.png
    #tambahkan back -- untuk kembali ke halaman profile
    Press Keycode    ${back}      #untuk close keyboard
    Sleep    1s
    Press Keycode    ${back}
    #hapus data yang sudah lahir agar data bersih kembali
    Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
    Click Element    ${APP}:id/tv_baby_name
    Wait Until Element Is Visible    ${APP}:id/delete     100s
    Click Element    ${APP}:id/delete
    Page Should Not Contain Text    ${NAMA_BAYI}
    #ubah artikel agar saat create new born muncul tema / artikel
    Ubah Artikel Tumbuh Kembang Without Choose Theme
    Close Application
