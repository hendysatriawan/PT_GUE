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
Resource    ../Resource/Notification_Resource.robot

# Suite Setup   Buka apps temanbumil real device
# Suite Teardwon    Close Application

*** Test Cases ***
# 1.Masuk Register Via Login
#   Log    Masuk halaman Register dengan memilih link daftar disini pada halaman login dan buka halaman syrat & ketentuan
#   Masuk Register Via Login
#   #buka halaman syarat ketentuan
#   Click Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_tos')]
#   Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Syarat & Ketentuan')]       100s
#   Sleep    10s
#   #Capture Page Screenshot   filename=Masuk Register Via Login & syarat ketentuan.png
#   Close Application
#
# # 2.Register Valid
# #     Log    Test Register dengan data valid
# #     Register Valid
# #     # Capture Page Screenshot   filename=Test Register Valid.png
# #     Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'com.temanbumil.android:id/btn_verify')]    200s
# #     Close Application
#
# 3.Register Email Already
#   Log    Test Register dengan Email sudah terdaftar
#   Register Email Sudah Terdaftar
#   # Capture Page Screenshot   filename=Test Register Email Sudah Terdaftar.png
#   Close Application
#
# 4.Register Email Invalid 1
#   Log    Test Register dengan Email tidak valid 1 (tanpa .com)
#   Register Email Tidak Valid 1
#   # Capture Page Screenshot   filename=Test Register Email Tidak Valid 1.png
#   Close Application
#
# 5.Register Email Invalid 2
#   Log    Test Register dengan Email tidak valid 2 (tanpa @)
#   Register Email Tidak Valid 2
#   # Capture Page Screenshot   filename=Test Register Email Tidak Valid 2.png
#   Close Application
#
# 6.Register Password Invalid
#   Log    Test Register dengan Password tidak Valid
#   Register Password Tidak Valid
#   # Capture Page Screenshot   filename=Test Register Password Invalid.png
#   Close Application
#
# 7.Register Not Click Agreement
#   Log    Test Register tanpa pilih setuju ketentuan
#   Register Tidak Pilih Setuju
#   # Capture Page Screenshot   filename=Test Register tidak setuju ketentuan.png
#   Close Application
#
# 8.Register No Input Mandatory Field
#   Log    Test Register dengan tidak mengisi salah satu field yang mandatory
#   Register No Input Mandatory field
#   # Capture Page Screenshot   filename=Test Register field mandatory blank.png
#   Close Application
#
# # 9.Register Via Facebook
# #   Log     Test Register Via Facebook
# #   Register Via Facebook
# #   # Capture Page Screenshot   filename=Test Register Via Facebook.png
# #   Close Application
# #
# # 10.Register Via Google
# #   Log    Test Register Via Google
# #   Register Via Google
# #   Wait Until Element Is Visible    com.google.android.gms:id/title    100s
# #   # Capture Page Screenshot   filename=Test Register Via Google.png
# #   Close Application
#
# # 11.Login Data Valid
# #   Set Tags    Test Login dengan data valid (user baru register)
# #   Log    Test Login dengan data valid (user baru register)
# #   Login Valid
# #   # Capture Page Screenshot       filename=Login Valid.png
# #   Close Application
#
# 12.Login Data Email Invalid
#   Log    Test Login dengan Email yang belum terdaftar
#   Login Invalid Email
#   # Capture Page Screenshot   filename=Login Data Email Invalid.png
#   Close Application
#
# 13.Login Data Password Invalid
#   Log    Test Login dengan Password yang salah
#   Login Invalid Password
#   # Capture Page Screenshot   filename=Login Data Password Invalid.png
#   Close Application
#
# 14.Lupa Password Email Invalid
#   Log    Test Lupa Password dengan menggunakan email yang tidak Terdaftar
#   Lupa Password Invalid Email
#   # Capture Page Screenshot   filename=Lupa Password Data Email Invalid.png
#   Close Application
#
# # 15.Lupa Password Email Valid
# #   Log    Test Lupa Password dengan menggunakan email yang terdaftar
# #   Lupa Password Valid Email
# #   Capture Page Screenshot   filename=Lupa Password Data Email Valid.png
# #   Coachmark Got It
# #   Logout With Coachmark
# #   Login After Reset Password
# #   Close Application

16.Program Hamil Homepage
  Login Valid
  #untuk handle sementara IG
  Recent Aplikasi
  # Question Program Hamil
  Coachmark Got It
  # Mulai Polling
  # Capture Page Screenshot   filename=Test Question Program Hamil.png
# 17.Program Hamil Artikel Slider 1
#   Homepage Program Hamil Artikel Slider 1
#   Kembali ke Homepage Dari Artikel Slider
# 18.Program Hamil Artikel Slider 2
#   Homepage Program Hamil Artikel Slider 2
#   Kembali ke Homepage Dari Artikel Slider 2
# 19.Program Hamil Checklist
#   Homepage Program Hamil Checklist
#   Kembali ke Homepage Dari Checklist
# 20.Program Hamil Tips
#   Homepage Program Hamil Tips
#   Kembali ke Homepage Dari Tips
# 21.Program Hamil Tips Slide
#   Homepage Program Hamil Tips Slide
#   Kembali ke Homepage Dari Tips
# 22.Program Hamil Artikel Homepage
#   Homepage Program Hamil Artikel
#   Kembali ke Homepage Dari Artikel Terkait
# 23.Program Hamil Checklist Notifikasi
#   Homepage Progam Hamil Checklist Notifikasi
#   Kembali ke Homepage Dari Notifikasi Checklist
# 24.Program Hamil Drawer Menu
#   Log    Drawer Menu
# 24a.Program Hamil Menu Checklist
#   Program Hamil Menu Checklist
# 24b.Program Hamil Menu Agenda
#   Program Hamil Menu Agenda
24c.Program Hamil Menu Album
  Program Hamil Menu Album
24d.Program Hamil Menu Artikel
  Program Hamil Menu Artikel
  Program Hamil Menu Artikel Cari
24e.Program Hamil Menu Tips
  Program Hamil Menu Tips
  Program Hamil Menu Tips Cari
24f.Program Hamil Tambah Anak
  Program Hamil Menu Home
  Program Hamil Tambah Anak
  Coachmark Got It
  Cek Data Program Hamil Tambah Anak & Hapus Data Tambah Anak
24g.Program Hamil Ubah Status Hamil
  Program Hamil Ubah Status Sedang Hamil
25.Sedang Hamil Homepage
  Log    Sedang Hamil Homepage
25a.Homepage Sedang Hamil Janin 3D
  Sedang Hamil Homepage Janin 3D
  Kembali ke Homepage Sedang Hamil Dari Info Janin
25b.Homepage Sedang Hamil Info Mums
  Sedang Hamil Homepage Info
  Kembali ke Homepage Sedang Hamil Dari Info Mums
25c.Homepage Sedang Hamil Baby Ideal
  Sedang Hamil Homepage Baby Ideal
  Kembali ke Homepage Sedang Hamil Dari Baby Ideal
25d.Homepage Sedang Hamil checklist
  Sedang Hamil Homepage Checklist
  Kembali ke Homepage Sedang Hamil Dari Checklist
25e.Homepage Sedang Hamil Tips
  Sedang Hamil Homepage Tips
  Kembali ke Homepage Sedang Hamil Dari Tips
25f.Homepage Sedang Hamil Tips Slide
  Sedang Hamil Homepage Tips Slide
  Kembali ke Homepage Sedang Hamil Dari Tips
25g.Homepage Sedang Hamil Artikel Terkait
  Sedang Hamil Homepage Artikel Terkait
  Kembali ke Homepage Sedang Hamil Dari Artikel Terkait
25h.Homepage Sedang Hamil Checklist Notifikasi
  Homepage Sedang Hamil Checklist Notifikasi
  Kembali ke Homepage Sedang Hamil Dari Notifikasi Checklist
25i.Homepage Sedang Hamil Minggu Ini
  Sedang Hamil Homepage Minggu Ini
  Kembali ke Homepage Sedang Hamil Minggu Ini
26.Sedang Hamil Drawer Menu
   Log    Sedang Hamil Drawer Menu
26a.Sedang Hamil Menu Checklist
  Sedang Hamil Menu Checklist
26b.Sedang Hamil Menu Agenda
  Sedang Hamil Menu Agenda
26c.Sedang Hamil Grafik Mom & Baby
  Sedang Hamil Grafik Mom
  Sedang Hamil Grafik Baby
  Sedang Hamil Ubah Berat Mums Sebelum Hamil
26d.Sedang Hamil Menu Album
  Sedang Hamil Menu Album
26e.Sedang Hamil Menu Artikel
  Sedang Hamil Menu Artikel
  Sedang Hamil Menu Artikel Cari
26f.Sedang Hamil Menu Tips
  Sedang Hamil Menu Tips
  Sedang Hamil Menu Tips Cari
26g.Sedang Hamil Tambah Anak
  Sedang Hamil Menu Home
  Sedang Hamil Tambah Anak
  Coachmark Got It
  Cek Data Sedang Hamil Tambah Anak & Hapus Data Tambah Anak
26h.Sedang Hamil Ubah Status Newborn
  Sedang Hamil Ubah Status Newborn
27.New Born Homepage
  Log    New Born Homepage
27a.Homepage New Born Foto Baby
  Homepage New Born Foto Baby
27b.Homepage New Born Add Record
  Homepage New Born Add Record
  Kembali ke Homepage Newborn dari Add Record
27c.Homepage New Born Add Album
  Homepage New Born Add Album
  Kembali ke Homepage Newborn dari Add Album
27d.Homepage New Born Info Tumbuh Kembang
  Homepage New Born Info Tumbuh Kembang
  Kembali ke Homepage Newborn dari info tumbuh kembang
27e.Homepage New Born checklist
  Homepage newborn Checklist
  Kembali ke Homepage Newborn Dari Checklist
27f.Homepage New Born Tips
  Homepage Newborn Tips
  Kembali ke Homepage Newborn Dari Tips
27g.Homepage New Born Tips Slide
  Homepage Newborn Tips Slide
  Kembali ke Homepage Newborn Dari Tips
27h.Homepage New Born Artikel Terkait
  Homepage Newborn Artikel Terkait
  Kembali ke Homepage Newborn Dari Artikel Terkait
27i.Homepage New Born Checklist Notifikasi
  Homepage Newborn Checklist Notifikasi
  Kembali ke Homepage New Born Dari Notifikasi Checklist
27j.Homepage Newborn Minggu Ini
  Homepage Newborn Minggu Ini
  Kembali ke Homepage Newborn Minggu Ini
28.New Born Drawer Menu
   Log    New Born Drawer Menu
28a.New Born Menu Checklist
  New Born Menu Checklist
28b.New Born Menu Agenda
  New Born Menu Agenda
28c.New Born Grafik Anak
  New Born Grafik Anak
  New Born Data Terakhir Janin
28d.New Born Menu Album
  New Born Menu Album
28e.New Born Menu Artikel
  New Born Menu Artikel
  New Born Menu Artikel Cari
28f.New Born Menu Tips
  New Born Menu Tips
  New Born Menu Tips Cari
28g.New Born Tambah Anak
  New Born Menu Home
  New Born Tambah Anak
  Coachmark Got It
  Cek Data New Born Tambah Anak & Hapus Data Tambah Anak
28h.Forum
  Forum
  Kembali ke forum dari halaman bookmark
  Forum Masuk ke Thread Detail
  Forum Thread Cari
  Kembali ke forum dari halaman search
  # dimark karen harus ada perubahan di loadnya
  # Create thread
  # Kembali ke forum dari create thread
  # Create Thread Floating Button
  # Kembali ke forum dari create thread
28i.Resep New Born
  Resep
  Kembali ke Resep Dari Filter
  Buka Resep
  Kembali ke Menu Resep
  Search Resep
  Kembali ke Resep Dari Search
  Unbookmark Resep
