*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Library    String
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Coachmark_Splash_Resource.robot
Resource    ../Resource/Question_Resource.robot
Resource    ../Resource/Checklist_Resource.robot

*** Keywords ***
Kembali ke Homepage Dari Notifikasi Checklist
  #kembali ke homepage
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]     100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_mother')]    100s

Kembali ke Homepage Sedang Hamil Dari Notifikasi Checklist
  #kembali ke homepage
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]     100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/img_fetus')]   100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'KEHAMILAN MUMS')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 Mgg')][@selected='true']
  #tidak ada counting notification
  # Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.TextView

Kembali ke Homepage New Born Dari Notifikasi Checklist
  #kembali ke homepage
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]     100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  #cek halaman homepage
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'android:id/progress')]    100s
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]   100s
  #cek homepage newborn
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/image_baby')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD RECORD')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'ADD ALBUM')]
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textLastRecord')][@text='RECORD TERBARU']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/textIdeal')][@text='TUMBUH KEMBANG ANAK']

Homepage Progam Hamil Checklist Notifikasi
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]
  #jumlah notifikasi awal harus > 0
  Page Should Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.TextView
  #masuk ke halaman notifikasi
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]    Notifikasi
  #pilih notifikasi checklist
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/rp')]
  Page Should Contain Text    Checklist Program Hamil
  Click Element    //android.widget.TextView[contains(@text,'Ayo lengkapi checklist mums.')]
  #lakukan chceklist pada program hamil
  Program Hamil Checklist
  

Homepage Sedang Hamil Checklist Notifikasi
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]   100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]
  #jumlah notifikasi awal harus > 0
  Page Should Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.TextView
  #masuk ke halaman notifikasi
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]    Notifikasi
  #pilih notifikasi checklist
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/rp')]
  Page Should Contain Text    Checklist Babyku
  Click Element    //android.widget.TextView[contains(@text,'Ayo lengkapi checklist mums.')]
  #lakukan chceklist pada program hamil
  Sedang Hamil Checklist

Homepage Newborn Checklist Notifikasi
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]   100s
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]
  #jumlah notifikasi awal harus > 0
  Page Should Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.TextView
  #masuk ke halaman notifikasi
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_notification')]
  Element Text Should Be    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/tv_title')]    Notifikasi
  #pilih notifikasi checklist
  Wait Until Page Does Not Contain Element    //android.widget.ProgressBar[contains(@resource-id,'com.temanbumil.android:id/progress_bar')]    100s
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.temanbumil.android:id/rp')]    100s
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Ayo lengkapi checklist mums.')]
  Click Element    //android.widget.TextView[contains(@text,'Ayo lengkapi checklist mums.')]
  #lakukan chceklist pada program hamil
  Newborn Checklist
