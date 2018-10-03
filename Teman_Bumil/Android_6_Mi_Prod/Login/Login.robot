*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
*** Test Cases ***
1.Login Data Valid
  Set Tags    Test Login dengan data valid (user baru register)
  Log    Test Login dengan data valid (user baru register)
  Login Valid
  Capture Page Screenshot       filename=Login Valid.png
  Close Application

2.Login Data Email Invalid
  Log    Test Login dengan Email yang belum terdaftar
  Login Invalid Email
  Capture Page Screenshot   filename=Login Data Email Invalid.png
  Close Application

3.Login Data Password Invalid
  Log    Test Login dengan Password yang salah
  Login Invalid Password
  Capture Page Screenshot   filename=Login Data Password Invalid.png
  Close Application

4.Lupa Password Email Invalid
  Log    Test Lupa Password dengan menggunakan email yang tidak Terdaftar
  Lupa Password Invalid Email
  Capture Page Screenshot   filename=Lupa Password Data Email Invalid.png
  Close Application

5.Lupa Password Email Valid
  Log    Test Lupa Password dengan menggunakan email yang terdaftar
  Lupa Password Valid Email
  Capture Page Screenshot   filename=Lupa Password Data Email Valid.png
  Coachmark Got It
  Logout With Coachmark
  Login After Reset Password
  Close Application
