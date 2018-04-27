*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Question_Resource.robot
Resource    ../Resource/Profile_Resource.robot
*** Test Cases ***
1.Question Program Hamil
    Login Valid
    Question Program Hamil
    Coachmark Got It
    Capture Page Screenshot   filename=Test Question Program Hamil.png
    Hapus Data Program Hamil With Coachmark
    Close Application

2.Question Kehamilan Yes
    Login Valid
    Question Kehamilan Sudah
    Coachmark Got It
    Capture Page Screenshot   filename=Test Question Kehamilan Yes.png
    Hapus Data Kehamilan With Coachmark
    Close Application

3.Question Kehamilan No
    Login Valid
    Question Kehamilan Belum
    Coachmark Got It
    Capture Page Screenshot   filename=Test Question Kehamilan No.png
    Hapus Data Kehamilan With Coachmark
    Close Application

4.Question Tumbuh Kembang
    Login Valid
    Question Tumbuh Kembang Positive
    Coachmark Got It
    Capture Page Screenshot   filename=Test Question Tumbuh Kembang.png
    Hapus Data Tumbuh Kembang With Coachmark
    Ubah Artikel Tumbuh Kembang Without Choose Theme             #ubah artikel setelah hapus agar saat create tumbuh kembang lagi question tema tetap muncul
    Close Application

5.Question Tumbuh Kembang Negative Tanggal
    Login Valid
    Question Tumbuh Kembang Negative Tanggal
    Sleep    1s
    Capture Page Screenshot   filename=Test Question Tumbuh Kembang Negative Tanggal.png
    Close Application

6.Question Tumbuh Kembang Negative Nama
    Login Valid
    Question Tumbuh Kembang Negative Nama
    Capture Page Screenshot   filename=Test Question Tumbuh Kembang Negative Nama.png
    Close Application

7.Question Tumbuh Kembang Negative Gender
    Login Valid
    Question Tumbuh Kembang Negative Gender
    Capture Page Screenshot   filename=Test Question Tumbuh Kembang Negative Gender.png
    Close Application
