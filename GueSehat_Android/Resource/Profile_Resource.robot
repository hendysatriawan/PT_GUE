*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Login_Resource.robot

*** Keywords ***
Kembali ke Home dari Profile
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman home
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/btn_home')]    ${timeout}

Masuk & Edit Profile
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # pilih profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_user_name')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/user_photo')]   ${timeout}
  ${namauser}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_user_name')]
  # masuk ke profile
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_user_name')]
  Recent Aplikasi
  Sleep    3s
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Profil']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_user_name')][@text='${namauser}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Profil')][@selected='true']   ${timeout}
  # pilih tab artikel
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Artikel')][@selected='false']   ${timeout}
  Click Element    //android.widget.TextView[@text='Artikel']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Artikel')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_publish')][@text='Publish']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_publish')][@text='Publish']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_moderation')][@text='Moderation']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_moderation')][@text='Moderation']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_draft')][@text='Draft']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_draft')][@text='Draft']
  # masuk ke edit profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_edit_profile')][@text='Edit Profil']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_edit_profile')][@text='Edit Profil']
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Profile']   ${timeout}
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_input')][@text='${namauser}']   ${timeout}
  # input foto
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_change_photo')][@text='Ganti Foto']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_change_photo')][@text='Ganti Foto']
  # permission untuk camera & galeri
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Permission_Gallery    #allow permission Galery
  Permission_Camera     #allow permission camera
  Wait Until Element Is Visible    ${APP}:id/alertTitle   100s      #tampil message allert ambil gambar
  Wait Until Element Is Visible    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Click Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'android:id/button2')][@text='CAMERA']    10s
  Sleep    2s
  Press Keycode    80       #focus camera
  Press Keycode    27       #capture
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]    100s
  Click Element    //android.widget.TextView[contains(@resource-id,'com.sec.android.app.camera:id/okay')]
  # klik simpan
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_save')][@text='SIMPAN']    ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'com.guesehat.android:id/btn_save')][@text='SIMPAN']
  # berhasil tersimpan - kembali ke halaman profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_user_name')][@text='${namauser}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_edit_profile')][@text='Edit Profil']    ${timeout}
