*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Register_Resource.robot

*** Test Cases ***
Register Valid
  Log    Test Register dengan data valid
  Register Valid
  Capture Page Screenshot   filename=Test Register Valid.png
  Close Application
Register Email Already
  Log    Test Register dengan Email sudah terdaftar
  Register Email Sudah Terdaftar
  Capture Page Screenshot   filename=Test Register Email Sudah Terdaftar.png
  Close Application
Register Email Invalid 1
  Log    Test Register dengan Email tidak valid 1 (tanpa .com)
  Register Email Tidak Valid 1
  Capture Page Screenshot   filename=Test Register Email Tidak Valid 1.png
  Close Application
Register Email Invalid 2
  Log    Test Register dengan Email tidak valid 2 (tanpa @)
  Register Email Tidak Valid 2
  Capture Page Screenshot   filename=Test Register Email Tidak Valid 2.png
  Close Application
Register Password Invalid
  Log    Test Register dengan Password tidak Valid
  Register Password Tidak Valid
  Capture Page Screenshot   filename=Test Register Password Invalid.png
  Close Application
Register Not Click Agreement
  Log    Test Register tanpa pilih setuju ketentuan
  Register Tidak Pilih Setuju
  Capture Page Screenshot   filename=Test Register tidak setuju ketentuan.png
  Close Application
