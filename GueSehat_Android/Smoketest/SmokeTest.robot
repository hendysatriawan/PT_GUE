*** Setting ***

Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Register_Resource.robot
Resource    ../Resource/Home_Resource.robot
Resource    ../Resource/Direktori_Resource.robot
Resource    ../Resource/Artikel_Resource.robot
Resource    ../Resource/Event_Resource.robot
Resource    ../Resource/Profile_Resource.robot

*** Test Cases ***
# 1.Ke halaman GS (Onboarding)
#   [Documentation]   swipe splashscreen sampai masuk ke halaman beranda
#   Buka Apps GS Real Device
#   Force Update
#   Splash Screen GS
#   Buka semua Tab Halaman Register
#   Skip Ke Home
#   Close Application
#
# # 2.Register akun Guesehat
# #   [Documentation]   Register akun sampai aktivasi akun via chrome
# #   Buka Apps GS Real Device
# #   Force Update
# #   Splash Screen GS
# #   Register
# #   Close Application
#
# 3.Forgot Password akun Guesehat
#   [Documentation]   Forgot Password dengan akun yang baru di register
#   Buka Apps GS Real Device
#   Force Update
#   Splash Screen GS
#   Forgot Password
#   Close Application
#
# 4.login dengan akun google
#   [Documentation]   Login aplikasi GS dengan akun email google yang sudah terdaftar
#   Buka Apps GS Real Device
#   Force Update
#   Splash Screen GS
#   Login Google
#   Close Application
#
# 5.login dengan akun facebook
#   [Documentation]   Login aplikasi GS dengan akun facebook yang sudah terdaftar
#   Buka Apps GS Real Device
#   Force Update
#   Splash Screen GS
#   Login Facebook
#
6.Home
  [Documentation]   view & open fitur dihalaman home
  Buka Apps GS Real Device
  Force Update
  Splash Screen GS
  Skip Ke Home
#   Home Slide Artikel
#   Kembali ke Home dari slide artikel
#
# 6A.Home Slide Direktori Dokter
#   [Documentation]   open direktori dokter via slide direktori di home
#   Dokter Slide Direktori
#   Kembali ke Home via side menu
#
# 6B.Home Slide Direktori Rumah Sakit
#   [Documentation]   open Rumah sakit via slide direktori di home
#   Rumah sakit slide Direktori
#   Kembali ke Home via Bottom Bar
#
# 6C.Home Slide Direktori Klinik
#   [Documentation]   open direktori klinik via slide direktori di home
#   Klinik slide Direktori
#   Kembali ke Home via button back device
#
# 6D.Home Slide Direktori Gym & Health Club
#   [Documentation]   open direktori Gym & Health Club via slide direktori di home
#   Gym & Health Club slide Direktori
#   Kembali ke Home via button back device
#
# 6E.Home Slide Direktori Spa & Massage
#   [Documentation]   open direktori Spa & Massage via slide direktori di home
#   Spa & Massage slide Direktori
#   Kembali ke Home via button back device
#
# 6F.Home artikel kategori Lifestyle
#   [Documentation]   open artikel kategori Lifestyle di Home
#   Home Artikel kategori Lifestyle
#   Kembali ke Home via button back device
#
# 6G.Home artikel kategori Medis
#   [Documentation]   open artikel kategori Medis di Home
#   Home Artikel kategori Medis
#   Kembali ke Home via button back device
#
# 6H.Home artikel kategori Sex & Love
#   [Documentation]   open artikel kategori Sex & Love di Home
#   Home Artikel kategori Sex & Love
#   Kembali ke Home via button back device
#
# 6I.Home artikel kategori Wanita
#   [Documentation]   open artikel kategori Wanita di Home
#   Home Artikel kategori Wanita
#   Kembali ke Home via button back device
#
# 6J.Home Search
#   [Documentation]   cari di home dengan input keyword tertentu & open artikel/forum/dokter
#   Search Home Artikel
#   Kembali ke search dari detail
#   Search Home Forum
#   Kembali ke search dari detail
#   Search Home Dokter
#   Kembali ke search dari detail
#   Kembali ke Home dari Search
#
# 7A.Direktori Dokter
#   [Documentation]   open direktori dokter via bottom menu & open detail dokter
#   Direktori Dokter & Detail
#   Kembali ke Direktori dokter dari detail
#   Direktori Dokter Filter & Hapus Filter
#
# 7B.Direktori Rumah Sakit
#   [Documentation]   open direktori rumah sakit via bottom menu & open detail rumah sakit
#   Direktori Rumah Sakit & Detail
#   Kembali ke Direktori Rumah Sakit dari Detail
#
# 7C.Direktori Klinik
#   [Documentation]   open direktori klinik via bottom menu & open detail klinik
#   Direktori Klinik & Detail
#   Kembali ke Direktori Klinik dari Detail
#
# 7D.Direktori Gym & Health Club
#   [Documentation]   open direktori Gym & Health Club via bottom menu & open detail Gym & Health Club
#   Direktori Gym Health Club & Detail
#   Kembali ke Direktori Gym & Health Club dari Detail
#
# 7E.Direktori Spa & Massage
#   [Documentation]   open direktori Spa & Massage via bottom menu & open detail Spa & Massage
#   Direktori Spa Massage & Detail
#   Kembali ke Direktori Spa & Massage dari Detail
#
# 7F.Direktori Healthy Food & Beverage
#   [Documentation]   open direktori Healthy Food & Beverage via bottom menu & open detail Healthy Food & Beverage
#   Direktori Healthy Food Beverage & Detail
#   Kembali ke Direktori Healthy Food & Beverage dari Detail
#
# 7G.Direktori Beauty
#   [Documentation]   open direktori Beauty via bottom menu & open detail Beauty
#   Direktori Beauty & Detail
#   Kembali ke Direktori Beauty dari Detil
#
# 7H.Direktori Lab
#   [Documentation]   open direktori Lab via bottom menu & open detail Lab
#   Direktori Lab & Detail
#   Kembali ke Direktori Lab dari Detil
#
# 7I.Direktori Praktisi
#   [Documentation]   open direktori Praktisi via bottom menu & open detail Praktisi
#   Direktori Praktisi & Detail
#   Kembali ke Direktori Praktisi dari Detil
#
# 8A.Artikel Tab Semua
#   [Documentation]   open artikel tab semua via side menu & open artikel tab semua
#   Masuk Artikel via Side Menu & Detail Semua artikel
#
# 8B.Artikel Tab Lifestyle
#   [Documentation]   open artikel tab Lifestyle via side menu & open artikel tab Lifestyle
#   Masuk Artikel via Side Menu & Detail Lifestyle Artikel
#   Kembali ke Artikel Lifestyle dari Detil Artikel
#
# 8C.Artikel Tab Medis
#   [Documentation]   open artikel tab Medis via side menu & open artikel tab Medis
#   Masuk Artikel via Side Menu & Detail Medis Artikel
#   Kembali ke Artikel Medis dari Detil Artikel
#
# 8D.Artikel Tab Sex & Love
#   [Documentation]   open artikel tab Sex & Love via side menu & open artikel tab Sex & Love
#   Masuk Artikel via Side Menu & Detail Sex Love Artikel
#   Kembali ke Artikel Sex Love dari Detil Artikel
#
# 8E.Artikel Tab Wanita
#   [Documentation]   open artikel tab Wanita via side menu & open artikel tab Wanita
#   Masuk Artikel via Side Menu & Detail Wanita Artikel
#   Kembali ke Artikel Wanita dari Detil Artikel
#
# 8F.Cari artikel
#   [Documentation]   cari artikel & masuk ke detail artikel
#   Cari Artikel & Masuk ke Detail
#   Kembali ke Artikel dari Pencarian Artikel
#   Ke Home
#
# 8G.Artikel Pagination
#   [Documentation]   open artikel Pagination via side menu & open artikel Pagination
#   Artikel Pagination & Detail
#   Kembali ke Home dari Artikel Pagination
#
# 8H.Artikel Slideshow
#   [Documentation]   open artikel Slideshow via side menu & open artikel Slideshow
#   Artikel Slideshow & Detail
#   Kembali ke Home dari Artikel Slideshow
#
8I.Artikel Counting
  [Documentation]   open artikel Counting via side menu & open artikel Counting
  Login Via Side Menu
#   Artikel Counting & Detail
#   Kembali ke Home dari Artikel Counting
#
# 8J.Artikel Trivia
#   [Documentation]   open artikel Trivia via side menu & open artikel Trivia
#   Artikel Trivia & Detail
#   Kembali ke Home dari Artikel Trivia
#
# 8K.Artikel Survey
#   [Documentation]   open artikel Survey via side menu & open artikel Survey
#   Artikel Survey & Detail
#   Kembali ke Home dari Artikel Survey
#
# 9A.Event
#   [Documentation]   cari event & masuk ke detail event
#   Masuk Halaman Event
#   Kembali ke Event dari Detil Event
#   Share Event
  Ke Home

10A.Profile & Edit Profile
  [Documentation]   open Profile & edit profile
  Masuk & Edit Profile
  Kembali ke Home dari Profile
