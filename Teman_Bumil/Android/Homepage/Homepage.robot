*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
Resource    ../Resource/Question_Resource.robot
Resource    ../Resource/Homepage_Resource.robot

*** Test Cases ***
1.Homepage Program Hamil Artikel
  Log    Lakukan Login dan pilih question program hamil, lalu buka artikel yang di homepage
  Login Valid
  Question Program Hamil
  Coachmark Got It
  Homepage Program Hamil Artikel Slider 1
  Capture Page Screenshot   filename=Homepage Program Hamil Artikel 1.png
  Kembali ke Homepage Dari Artikel Slider
  Homepage Program Hamil Artikel Slider 2
  Capture Page Screenshot   filename=Homepage Program Hamil Artikel 2.png
  Kembali ke Homepage Dari Artikel Slider
2.Homepage Program Hamil Checklist
  Homepage Program Hamil Checklist
  Capture Page Screenshot   filename=Homepage Program Hamil Checklist.png
  Kembali ke Homepage Dari Checklist
3.Homepage Program Hamil Tips
  Homepage Program Hamil Tips
  Capture Page Screenshot   filename=Homepage Program Hamil Tips.png
  Kembali ke Homepage Dari Tips
4.Homepage Program Hamil Artikel Terkait
  Homepage Program Hamil Artikel
  Capture Page Screenshot   filename=Homepage Program Hamil Artikel.png
  Kembali ke Homepage Dari Artikel Terkait
5.Homepage Program Hamil Ubah Status Hamil
  Homepage Program Hamil Ubah Status Hamil
  Capture Page Screenshot   filename=Homepage Program Hamil Ubah Status Hamil.png
