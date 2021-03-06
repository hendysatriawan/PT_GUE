*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Register_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Question_Resource.robot
Resource    ../Resource/Profile_Resource.robot
Resource    ../Resource/DrawerMenu_Resource.robot
Resource    ../Resource/Homepage_Resource.robot
*** Test Cases ***
1.Masuk Register Via Login
  Log    Masuk halaman Register dengan memilih link daftar disini pada halaman login dan buka halaman syrat & ketentuan
  Masuk Register Via Login
  #buka halaman syarat ketentuan
  Click Element    ${APP}:id/tv_tos
  Wait Until Element Is Visible    xpath=//android.widget.TextView[@text='Syarat & Ketentuan']    100s
  Capture Page Screenshot   filename=Masuk Register Via Login & syarat ketentuan.png
  Close Application
#
# # 2.Register Valid
# # #     Log    Test Register dengan data valid
# # #     Register Valid
# # #     Capture Page Screenshot   filename=Test Register Valid.png
# # #     Wait Until Element Is Visible    ${APP}:id/tv_q_main    200s
# # #     Close Application
#
# 3.Register Email Already
#   Log    Test Register dengan Email sudah terdaftar
#   Register Email Sudah Terdaftar
#   Capture Page Screenshot   filename=Test Register Email Sudah Terdaftar.png
#   Close Application
#
# 4.Register Email Invalid 1
#   Log    Test Register dengan Email tidak valid 1 (tanpa .com)
#   Register Email Tidak Valid 1
#   Capture Page Screenshot   filename=Test Register Email Tidak Valid 1.png
#   Close Application
#
# 5.Register Email Invalid 2
#   Log    Test Register dengan Email tidak valid 2 (tanpa @)
#   Register Email Tidak Valid 2
#   Capture Page Screenshot   filename=Test Register Email Tidak Valid 2.png
#   Close Application
#
# 6.Register Password Invalid
#   Log    Test Register dengan Password tidak Valid
#   Register Password Tidak Valid
#   Capture Page Screenshot   filename=Test Register Password Invalid.png
#   Close Application
#
# 7.Register Not Click Agreement
#   Log    Test Register tanpa pilih setuju ketentuan
#   Register Tidak Pilih Setuju
#   Capture Page Screenshot   filename=Test Register tidak setuju ketentuan.png
#   Close Application
#
# 8.Register No Input Mandatory Field
#   Log    Test Register dengan tidak mengisi salah satu field yang mandatory
#   Register No Input Mandatory field
#   Capture Page Screenshot   filename=Test Register field mandatory blank.png
#   Close Application
#
# # 9.Register Via Facebook
# #   Log     Test Register Via Facebook
# #   Register Via Facebook
# #   Capture Page Screenshot   filename=Test Register Via Facebook.png
# #   Close Application
#
# # 10.Register Via Google
# #   Log    Test Register Via Google
# #   Register Via Google
# #   Wait Until Element Is Visible    com.google.android.gms:id/title    100s
# #   Capture Page Screenshot   filename=Test Register Via Google.png
# #   Close Application
#
# 1.Login Data Valid
#   Set Tags    Test Login dengan data valid (user baru register)
#   Log    Test Login dengan data valid (user baru register)
#   Login Valid
#   Capture Page Screenshot       filename=Login Valid.png
#   Close Application
#
# 2.Login Data Email Invalid
#   Log    Test Login dengan Email yang belum terdaftar
#   Login Invalid Email
#   Capture Page Screenshot   filename=Login Data Email Invalid.png
#   Close Application
#
# 3.Login Data Password Invalid
#   Log    Test Login dengan Password yang salah
#   Login Invalid Password
#   Capture Page Screenshot   filename=Login Data Password Invalid.png
#   Close Application
#
# 4.Lupa Password Email Invalid
#   Log    Test Lupa Password dengan menggunakan email yang tidak Terdaftar
#   Lupa Password Invalid Email
#   Capture Page Screenshot   filename=Lupa Password Data Email Invalid.png
#   Close Application
#
# # 5.Lupa Password Email Valid
# #   Log    Test Lupa Password dengan menggunakan email yang terdaftar
# #   Lupa Password Valid Email
# #   Capture Page Screenshot   filename=Lupa Password Data Email Valid.png
# #   Coachmark Got It
# #   Logout With Coachmark
# #   Login After Reset Password
# #   Close Application
#
# 1.Program Hamil Homepage
#   Login Valid
#   Question Program Hamil
#   Coachmark Got It
#   Capture Page Screenshot   filename=Test Question Program Hamil.png
# 1A.Program Hamil Artikel Slider 1
#   Homepage Program Hamil Artikel Slider 1
#   Kembali ke Homepage Dari Artikel Slider
# 1B.Program Hamil Artikel Slider 2
#   Homepage Program Hamil Artikel Slider 2
#   Kembali ke Homepage Dari Artikel Slider
# 1C.Program Hamil Checklist
#   Homepage Program Hamil Checklist
#   Kembali ke Homepage Dari Checklist
# 1D.Program Hamil Tips
#   Homepage Program Hamil Tips
#   Kembali ke Homepage Dari Tips
# 1E.Program Hamil Tips Slide
#   Homepage Program Hamil Tips Slide
#   Kembali ke Homepage Dari Tips
# 1F.Program Hamil Artikel Homepage
#   Homepage Program Hamil Artikel
#   Kembali ke Homepage Dari Artikel Terkait
# 1G.Program Hamil Checklist Notifikasi
#   Homepage Progam Hamil Checklist Notifikasi
#   Kembali ke Homepage Dari Checklist
# 1H.Hapus Data Program Hamil
#   Hapus Data Program Hamil With Coachmark
#   Close Application

# 2.Program Hamil Homepage Ubah Status Hamil
#   Login Valid
#   Question Program Hamil
#   Coachmark Got It
#   Homepage Program Hamil Ubah Status Hamil
#   Hapus Data Kehamilan With Coachmark
#   Close Application

# 3.Program Hamil Drawer Menu
#   Login Valid
#   Question Program Hamil
#   Coachmark Got It
# A.Program Hamil Menu Checklist
#   Program Hamil Menu Checklist
# B.Program Hamil Menu Agenda
#   Program Hamil Menu Agenda
# C.Program Hamil Menu Album
#   Program Hamil Menu Album
# D.Program Hamil Menu Artikel
#   Program Hamil Menu Artikel
#   Program Hamil Menu Artikel Cari
# E.Program Hamil Menu Tips
#   Program Hamil Menu Tips
#   Program Hamil Menu Tips Cari
# F.Hapus Data Program Hamil
#   Hapus Data Program Hamil Without Coachmark
#   Close Application
#
# 4.Question Kehamilan No -- homepage
#   Login Valid
#   Question Kehamilan Belum
#   Coachmark Got It
#   Capture Page Screenshot   filename=Test Question Kehamilan No.png
# A.Sedang Hamil Checklist Notifikasi
#   Homepage Sedang Hamil Checklist Notifikasi
#   Kembali ke Homepage Sedang Hamil Dari Checklist
# B.Sedang Hamil Info Baby - Image Fetus
#   Homepage Sedang Hamil Image Fetus
#   Kembali ke Homepage Sedang Hamil Dari Info Janin
# C.Sedang Hamil Info baby
#   Homepage Sedang Hamil Info Baby
#   Kembali ke Homepage Sedang Hamil Dari Info Janin
# D.Sedang Hamil Bayi Ideal
#   Homepage Sedang Hamil Bayi Ideal
#   Kembali ke Homepage Sedang Hamil Dari Info Janin
# E.Sedang Hamil Info Mums
#   Homepage Sedang Hamil info Mums
#   Kembali ke Homepage Sedang Hamil Dari Info Mums
# F.Sedang Hamil Checklist
#   Homepage Sedang Hamil Checklist
#   Kembali ke Homepage Sedang Hamil Dari Checklist
# G.Sedang Hamil Tips
#   Homepage Sedang Hamil Tips
#   Kembali ke Homepage Sedang Hamil Dari Tips
# H.Sedang Hamil Tips Slide
#   Homepage Sedang Hamil Tips Slide
#   Kembali ke Homepage Sedang Hamil Dari Tips
# I.Sedang Hamil Artikel
#   Homepage Sedang Hamil Artikel
#   Kembali ke Homepage Sedang Hamil Dari Artikel Terkait
# J.Hapus Data Kehamilan
#   Hapus Data Kehamilan With Coachmark
#   Close Application
#
# 5.Question Kehamilan Yes -- drawer menu
#   Login Valid
#   Question Kehamilan Sudah
#   Coachmark Got It
#   Capture Page Screenshot   filename=Test Question Kehamilan Yes.png
# A.Sedang Hamil Menu Checklist
#   Sedang Hamil Menu Checklist
# B.Sedang Hamil Menu Agenda
#   Sedang Hamil Menu Agenda
# C.Sedang Hamil Menu Grafik Mums
#   Sedang Hamil Menu Grafik Mums
#   Sedang Hamil pilih Grafik Berat Badan Mums
#   Sedang Hamil pilih Grafik Tekanan Darah Mums
# D.Sedang Hamil Menu Grafik Anak
#   Sedang Hamil Menu Grafik Anak
#   Sedang Hamil pilih Grafik Berat Badan Anak
#   Sedang Hamil pilih Grafik Tekanan Darah Anak
# E.Sedang Hamil Menu ALbum
#   Sedang Hamil Menu Album
# F.Sedang Hamil Menu Artikel
#   Sedang Hamil Menu Artikel
#   Sedang Hamil Menu Artikel Cari
#   Sedang Hamil Menu Artikel Filter
# G.Sedang Hamil Menu Tips
#   Sedang Hamil Menu Tips
#   Sedang Hamil Menu Tips Cari
# H.Hapus Data Kehamilan
#   Hapus Data Kehamilan Without Coachmark
#   Close Application
#
#
# 6.Question Tumbuh Kembang Homepage
#   Login Valid
#   Question Tumbuh Kembang Positive
#   Coachmark Got It
#   Capture Page Screenshot   filename=Test Question Tumbuh Kembang.png
# A.Tumbuh Kembang Checklist Notifikasi
#   Homepage Tumbuh Kembang Checklist Notifikasi
#   Kembali ke Homepage Tumbuh Kembang Dari Checklist
# B.Tumbuh Kembang Add Album
#   Homepage Tumbuh Kembang Add Album
#   Kembali ke Homepage Tumbuh Kembang Dari Album
# C.Tumbuh Kembang Info Baby
#   Homepage Tumbuh Kembang Info Baby
#   Kembali ke Homepage Tumbuh Kembang Dari Info Baby
# D.Tumbuh Kembang Checklist
#   Homepage Tumbuh Kembang Checklist
#   Kembali ke Homepage Tumbuh Kembang Dari Checklist
# E.Tumbuh Kembang Tips
#   Homepage Tumbuh Kembang Tips
#   Kembali ke Homepage Tumbuh Kembang Dari Tips
# F.Tumbuh Kenbang Tips Slide
#   Homepage Tumbuh Kembang Tips Slide
#   Kembali ke Homepage Tumbuh Kembang Dari Tips
# G.Tumbuh Kembang Artikel
#   Homepage Tumbuh Kembang Artikel
#   Kembali ke Homepage Tumbuh Kembang Dari Artikel
# H.Tumbuh Kembang Add Record
#   Homepage Tumbuh Kembang Add Record
#   Kembali ke Homepage Tumbuh Kembang Dari Grafik
# I.Hapus Data Tumbuh Kembang
#   Hapus Data Tumbuh Kembang With Coachmark
# j.Ubah Pengaturan Artikel
#   Ubah Artikel Tumbuh Kembang Without Choose Theme             #ubah artikel setelah hapus agar saat create tumbuh kembang lagi question tema tetap muncul
#   Close Application

# 7.Tumbuh Kembang Drawer Menu
#   Login Valid
#   Question Tumbuh Kembang Positive
#   Coachmark Got It
# A.Tumbuh Kembang Menu Checklist
#   Tumbuh Kembang Menu Checklist
# B.Tumbuh Kembang Menu Agenda
#   Tumbuh Kembang Menu Agenda
# C.Tumbuh Kembang Menu Album
#   Tumbuh Kembang Menu Album
# D.Tumbuh Kembang Menu Artikel
#   Tumbuh Kembang Menu Artikel
#   Tumbuh Ke Kembang Menu Artikel Cari
#   Tumbuh Kembang Menu Artikel Filter
# E.Tumbuh Kembang Menu Tips
#   Tumbuh Kembang Menu Tips
#   Tumbuh Kembang Menu Tips Cari
# F.Tumbuh Kembang Menu Grafik Data Janin Terakhir
#   Tumbuh Kembang Grafik Data Terakhir Janin
# G.Tumbuh Kembang Menu Grafik Anak
#   Tumbuh Kembang Menu Grafik Anak
#   Tumbuh Kembang Lihat Grafik Anak
# H.Hapus Data Tumbuh Kembang
#   Hapus Data Tumbuh Kembang Without Coachmark
# I.Ubah Pengaturan Artikel
#   Ubah Artikel Tumbuh Kembang Without Choose Theme
#   Close Application

#-- Negative Case --
# 5.Question Tumbuh Kembang Negative Tanggal
#   Login Valid
#   Question Tumbuh Kembang Negative Tanggal
#   Sleep    1s
#   Capture Page Screenshot   filename=Test Question Tumbuh Kembang Negative Tanggal.png
#   Close Application
#
# 6.Question Tumbuh Kembang Negative Nama
#   Login Valid
#   Question Tumbuh Kembang Negative Nama
#   Capture Page Screenshot   filename=Test Question Tumbuh Kembang Negative Nama.png
#   Close Application
#
# 7.Question Tumbuh Kembang Negative Gender
#   Login Valid
#   Question Tumbuh Kembang Negative Gender
#   Capture Page Screenshot   filename=Test Question Tumbuh Kembang Negative Gender.png
  # Close Application
#
#
# 1.Edit Dan Hapus Progam Hamil
#   Log    Ubah Status dari Program Hamil Menjadi Hamil pada halaman profile lalu hapus data sedang hamil
#   Login Valid
#   Question Program Hamil
#   Coachmark Got It
#   Edit Data Program Hamil With Coachmark          #ubah data program hamil jadi sedang hamil
#   Capture Page Screenshot     filename=Edit data program hamil menjadi sudah hamil.png
#   Click Element    ${APP}:id/btn_negative         #tampil notif 'selamat sudah lahir', lalu klik button tutup
#   Coachmark Got It
#   Hapus Data Kehamilan With Coachmark             #hapus data sedang hamil
#   Close Application
#
# 2.Edit dan Hapus Program Hamil 2 Data
#   Log    Ubah status dari program hamil menjadi sedang hamil, ubah lagi menjadi sudah lahir. lalu buat lagi program hamil lalu hapus data program hamil
#   Login Valid
#   Question Kehamilan Sudah
#   Coachmark Got It
#   Edit data sedang hamil with Coachmark             #ubah data sedang hamil jadi sudah lahir
#   Click Element    ${APP}:id/btn_negative         #tampil notif 'selamat sudah lahir', lalu klik button tutup
#   Coachmark Got It
#   Tambah Data Program Hamil With Coachmark
#   Coachmark Got It
#   Hapus Data Program Hamil With Coachmark
#   Capture Page Screenshot   filename=Edit & Hapus data program hamil saat ada 2 data.png
#   #hapus data yang sudah lahir agar data bersih kembali
#   Click Element    ${APP}:id/tv_baby_name
#   Wait Until Element Is Visible    ${APP}:id/delete   100s
#   Click Element    ${APP}:id/delete
#   Page Should Not Contain Text    ${NAMA_BAYI}
#   #ubah artikel agar saat create new born muncul tema / artikel
#   Ubah Artikel Tumbuh Kembang With Choose Theme
#   Close Application
#
# 3.Edit Dan Hapus Sedang Hamil
#   Log    Ubah Status dari sedang hamil menjadi sudah lahir pada halaman profile, lalu hapus data sudah lahir
#   Login Valid
#   Question Kehamilan Sudah
#   Coachmark Got It
#   Edit data sedang hamil with Coachmark           #ubah data sedang hamil jadi sudah lahir
#   Click Element    ${APP}:id/btn_negative         #tampil notif 'selamat sudah lahir', lalu klik button tutup
#   Coachmark Got It
#   Capture Page Screenshot   filename=Edit dan Hapus Sedang Hamil.png
#   Hapus Data Tumbuh Kembang With Coachmark
#   Ubah Artikel Tumbuh Kembang With Choose Theme
#   Close Application
#
# 4.Edit Sedang Hamil Negative dan Hapus data
#   Log    Ubah status menjadi lahir dan lakukan test negative pada inputan nama, gender, data anak & tema. lalu hapus data sedang hamil
#   Login Valid
#   Question Kehamilan Sudah
#   Coachmark Got It
#   Edit Data Sedang Hamil With Coachmark Negative Name
#   #Capture alert / notif
#   Capture Page Screenshot   filename=Edit Sedang Hamil jadi Lahir tanpa input nama.png
#   #tambahkan back -- untuk kembali ke halaman profile
#   Sleep    1s
#   Press Keycode    ${back}
#   #jalankan edit data sedang hamil tanpa pilih gender
#   Edit Data Sedang Hamil With Coachmark Negative Gender
#   #Capture alert / notif
#   Capture Page Screenshot   filename=Edit Sedang Hamil jadi Lahir tanpa input gender.png
#   #tambahkan back -- untuk kembali ke halaman profile
#   Hide Keyboard
#   Sleep    1s
#   Press Keycode    ${back}
#   #jalankan edit data sedang hamil tanpa input data bayi lengkap
#   Edit Data Sedang Hamil With Coachmark Negative Data Anak
#   #Capture alert / notif
#   Capture Page Screenshot   filename=Edit Sedang Hamil jadi Lahir Tanpa Input Data Bayi.png
#   #tambahkan back -- untuk kembali ke halaman profile
#   #Press Keycode    ${back}      #untuk close keyboard
#   Sleep    1s
#   Press Keycode    ${back}
#   #Jalankan edit data sedang hamil tanpa pilih tema
#   Edit Data Sedang Hamil With Coachmark Negative Tema
#   #Capture alert / notif
#   Capture Page Screenshot   filename=Edit Sedang hamil jadi lahir tanpa pilih tema.png
#   #tambahkan back -- untuk kembali ke halaman profile
#   Sleep    1s
#   Press Keycode    ${back}
#   #Hapus data yang sudah dibuat agar data bersih kembali
#   Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
#   Element Text Should Be    ${APP}:id/tv_baby_name    Babyku
#   Click Element    ${APP}:id/tv_baby_name
#   #hapus data
#   Wait Until Element Is Visible    ${APP}:id/delete   100s
#   Click Element    ${APP}:id/delete
#   #Cek data sudah dihapus semua
#   Wait Until Element Is Visible    ${APP}:id/tv_content   100s
#   Element Text Should Be    ${APP}:id/tv_content    Silakan tambah data anak Mums terlebih dahulu
#   Close Application
#
# 5.Edit dan hapus data sedang hamil 2 data
#   Log    Ubah Status dari sedang hamil menjadi sudah lahir pada halaman profile, lalu tambah data sedang hamil dan hapus data sedang hamil. lalu bersihkan data
#   Login Valid
#   Question Tumbuh Kembang Positive
#   Coachmark Got It
#   Tambah Data Sedang Hamil With Coachmark
#   Hapus Data Kehamilan With Coachmark
#   Capture Page Screenshot   filename=Edit & Hapus data Sedang Hamil saat ada 2 data.png
#   #hapus data yang sudah lahir agar data bersih kembali
#   Click Element    ${APP}:id/tv_baby_name
#   Wait Until Element Is Visible    ${APP}:id/delete   100s
#   Click Element    ${APP}:id/delete
#   Page Should Not Contain Text    ${NAMA_BAYI}
#   #ubah artikel agar saat create new born muncul tema / artikel
#   Ubah Artikel Tumbuh Kembang Without Choose Theme
#   Close Application
#
# 6.Edit Dan Hapus Data Tumbuh Kembang
#   Log    Buat data tumbuh kembang, lalu edit data. lalu hapus untuk bersihkan data
#   Login Valid
#   Question Tumbuh Kembang Positive
#   Coachmark Got It
#   Edit Data Tumbuh Kembang With Coachmark
#   Capture Page Screenshot   filename=Edit & Hapus data tumbuh kembang (new born).png
#   #hapus data yang sudah lahir agar data bersih kembali
#   Click Element    ${APP}:id/tv_baby_name
#   Wait Until Element Is Visible    ${APP}:id/delete   100s
#   Click Element    ${APP}:id/delete
#   Page Should Not Contain Text    ${NAMA_BAYI_EDIT}
#   #ubah artikel agar saat create new born muncul tema / artikel
#   Ubah Artikel Tumbuh Kembang Without Choose Theme
#   Close Application
#
# 7.Edit Dan Hapus Data Tumbuh Kembang negative
#   Log    Buat data tumbuh kembang, lalu edit data dengan hapus salah satu isi field. lalu back dan hapus untuk bersihkan data
#   Login Valid
#   Question Tumbuh Kembang Positive
#   Coachmark Got It
#   Edit Data Tumbuh Kembang With Coachmark Negative
#   Capture Page Screenshot   filename=Edit & Hapus data tumbuh kembang (new born) Negative.png
#   #tambahkan back -- untuk kembali ke halaman profile
#   Hide Keyboard
#   Sleep    1s
#   Press Keycode    ${back}
#   #hapus data yang sudah lahir agar data bersih kembali
#   Wait Until Element Is Visible    ${APP}:id/tv_baby_name   100s
#   Click Element    ${APP}:id/tv_baby_name
#   Wait Until Element Is Visible    ${APP}:id/delete     100s
#   Click Element    ${APP}:id/delete
#   Page Should Not Contain Text    ${NAMA_BAYI}
#   #ubah artikel agar saat create new born muncul tema / artikel
#   Ubah Artikel Tumbuh Kembang Without Choose Theme
#   Close Application
#
# 1.Homepage Program Hamil Artikel
#   Log    Lakukan Login dan pilih question program hamil, lalu buka artikel yang di homepage
#   Login Valid
#   Question Program Hamil
#   Coachmark Got It
#   Homepage Program Hamil Artikel Slider 1
#   Capture Page Screenshot   filename=Homepage Program Hamil Artikel 1.png
#   Kembali ke Homepage Dari Artikel Slider
#   Homepage Program Hamil Artikel Slider 2
#   Capture Page Screenshot   filename=Homepage Program Hamil Artikel 2.png
#   Kembali ke Homepage Dari Artikel Slider
# 2.Homepage Program Hamil Checklist
#   Homepage Program Hamil Checklist
#   Capture Page Screenshot   filename=Homepage Program Hamil Checklist.png
#   Kembali ke Homepage Dari Checklist
# 3.Homepage Program Hamil Tips
#   Homepage Program Hamil Tips
#   Capture Page Screenshot   filename=Homepage Program Hamil Tips.png
#   Kembali ke Homepage Dari Tips
# 4.Homepage Program Hamil Artikel Terkait
#   Homepage Program Hamil Artikel
#   Capture Page Screenshot   filename=Homepage Program Hamil Artikel.png
#   Kembali ke Homepage Dari Artikel Terkait
# 5.Homepage Program Hamil Ubah Status Hamil
#   Homepage Program Hamil Ubah Status Hamil
#   Capture Page Screenshot   filename=Homepage Program Hamil Ubah Status Hamil.png
