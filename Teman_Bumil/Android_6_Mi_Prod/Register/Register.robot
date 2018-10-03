*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Register_Resource.robot

*** Test Cases ***
1.Masuk Register Via Login
  Log    Masuk halaman Register dengan memilih link daftar disini pada halaman login dan buka halaman syrat & ketentuan
  Masuk Register Via Login
  #buka halaman syarat ketentuan
  Click Element    ${APP}:id/tv_tos
  Wait Until Element Is Visible    xpath=//android.widget.TextView[@text='Syarat & Ketentuan']    100s
  Capture Page Screenshot   filename=Masuk Register Via Login & syarat ketentuan.png
  Close Application

2.Register Valid
    Log    Test Register dengan data valid
    Register Valid
    Capture Page Screenshot   filename=Test Register Valid.png
    Wait Until Element Is Visible    ${APP}:id/tv_q_main    200s
    Close Application

3.Register Email Already
  Log    Test Register dengan Email sudah terdaftar
  Register Email Sudah Terdaftar
  Capture Page Screenshot   filename=Test Register Email Sudah Terdaftar.png
  Close Application

4.Register Email Invalid 1
  Log    Test Register dengan Email tidak valid 1 (tanpa .com)
  Register Email Tidak Valid 1
  Capture Page Screenshot   filename=Test Register Email Tidak Valid 1.png
  Close Application

5.Register Email Invalid 2
  Log    Test Register dengan Email tidak valid 2 (tanpa @)
  Register Email Tidak Valid 2
  Capture Page Screenshot   filename=Test Register Email Tidak Valid 2.png
  Close Application

6.Register Password Invalid
  Log    Test Register dengan Password tidak Valid
  Register Password Tidak Valid
  Capture Page Screenshot   filename=Test Register Password Invalid.png
  Close Application

7.Register Not Click Agreement
  Log    Test Register tanpa pilih setuju ketentuan
  Register Tidak Pilih Setuju
  Capture Page Screenshot   filename=Test Register tidak setuju ketentuan.png
  Close Application

8.Register No Input Mandatory Field
  Log    Test Register dengan tidak mengisi salah satu field yang mandatory
  Register No Input Mandatory field
  Capture Page Screenshot   filename=Test Register field mandatory blank.png
  Close Application

9.Register Via Facebook
  Log     Test Register Via Facebook
  Register Via Facebook
  Capture Page Screenshot   filename=Test Register Via Facebook.png
  Close Application

10.Register Via Google
  Log    Test Register Via Google
  Register Via Google
  Wait Until Element Is Visible    com.google.android.gms:id/title    100s
  Capture Page Screenshot   filename=Test Register Via Google.png
  Close Application
