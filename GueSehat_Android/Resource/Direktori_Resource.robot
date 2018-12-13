*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Login_Resource.robot

*** Keywords ***
Kembali ke Direktori dokter dari detail
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman search
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Dokter']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')]   ${timeout}

Kembali ke Direktori Rumah Sakit dari Detail
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman search
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Rumah Sakit']   ${timeout}

Kembali ke Direktori Klinik dari Detail
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman search
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Klinik']   ${timeout}

Kembali ke Direktori Gym & Health Club dari Detail
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman search
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Gym & Health Club']   ${timeout}

Kembali ke Direktori Spa & Massage dari Detail
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman search
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Spa & Massage']   ${timeout}

Kembali ke Direktori Healthy Food & Beverage dari Detail
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman search
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Healthy Food & Beverage']   ${timeout}

Kembali ke Direktori Beauty dari Detil
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman search
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Beauty']   ${timeout}

Kembali ke Direktori Lab dari Detil
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman search
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Lab']   ${timeout}

Kembali ke Direktori Praktisi dari Detil
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman search
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Praktisi']   ${timeout}

Direktori Dokter & Detail
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_dir')][@text='Direktori']     ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_dir')][@text='Direktori']
  #masuk ke direktori dokter
  Permission_Location
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Dokter']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')]   ${timeout}
  # buka detail dokter
  ${namadokter}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@index='1']
  Log    ${namadokter}
  ${spesialis}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')]
  Log    ${spesialis}
  ${praktek}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_worksplace')]
  Log    ${praktek}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namadokter}']
  #masuk ke halaman dokter
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Dokter']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namadokter}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='${spesialis}']   ${timeout}
  #tab profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Profil')][@selected='true']   ${timeout}
  # tab jadwal
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Jadwal')][@selected='false']    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Jadwal')][@selected='false']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Jadwal')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_name')][@text='${praktek}']   ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_see_map')][@text='See Map']
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_call')][@text='Call']
  # tab Komentar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='false']    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='false']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_comment_label')][@text='Komentar']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtcomment')]   ${timeout}
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btncomment')]    ${timeout}
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Dokter']    ${timeout}

Direktori Dokter Filter & Hapus Filter
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_filter')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_filter')]
  #masuk ke halaman filter
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Filter')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='Spesialis']   ${timeout}
  # pilih spesialis
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='Spesialis']
  Wait Until Page Contains Element    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')][@text='Cari Spesialis']   ${timeout}
  #masih bug jadi tidak bisa pakai ini
  # Input Text    //android.widget.EditText[contains(@resource-id,'com.guesehat.android:id/et_search')][@text='Cari Spesialis']    gigi
  # klik cari
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Gigi']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Gigi']
  Wait Until Page Contains Element    //android.widget.CheckBox[contains(@resource-id,'com.guesehat.android:id/cb_picker')][@checked='true']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']
  # lihat hasil filter
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Dokter']   ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='Gigi']    ${timeout}
  # hapus filter --------------
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_filter')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_filter')]
  #masuk ke halaman filter
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Filter')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='Spesialis']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/btn_reset')][@text='Reset']    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/btn_reset')][@text='Reset']
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']
  # lihat halaman direktori setelah reset filter
  Wait Until Page Contains Element    //android.widget.RelativeLayout[contains(@resource-id,'com.guesehat.android:id/search_form_toolbar')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Dokter']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='Umum']

Direktori Rumah Sakit & Detail
  #masuk ke direktori rumah sakit
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Dokter']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Dokter']
  # buka pilihan direktori
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Direktori')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Rumah Sakit']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Rumah Sakit']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']
  # masuk ke halaman direktori rumah sakit
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Rumah Sakit']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')][@text='Rumah Sakit']    ${timeout}
  # buka detail rumah sakit
  ${namars}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${namars}
  ${typers}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')]
  Log    ${typers}
  ${alamatrs}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')]
  Log    ${alamatrs}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namars}']
  #masuk ke halaman rumah sakit
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Rumah Sakit']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namars}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='${typers}']   ${timeout}
  # tab profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Profil')][@selected='true']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')][@text='${alamatrs}']   ${timeout}
  # tab fasilitas
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Fasilitas')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')][@selected='true']
  # tab layanan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Layanan')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')][@selected='true']    ${timeout}
  # tab Komentar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Komentar')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='true']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtcomment')]   ${timeout}
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btncomment')]    ${timeout}
  # tab dokter
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Dokter')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Dokter')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Dokter')][@selected='true']    ${timeout}
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Rumah Sakit']    ${timeout}


Direktori Klinik & Detail
  #masuk ke direktori klinik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Rumah Sakit']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Rumah Sakit']
  # buka pilihan direktori
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Direktori')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Klinik']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Klinik']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']
  # masuk ke halaman direktori Klinik
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Klinik']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')][@text='Klinik']    ${timeout}
  # buka detail klinik
  ${namaklinik}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${namaklinik}
  ${typeklinik}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')]
  Log    ${typeklinik}
  ${alamatklinik}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')]
  Log    ${alamatklinik}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namaklinik}']
  #masuk ke halaman klinik
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Klinik']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namaklinik}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='${typeklinik}']   ${timeout}
  # tab profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Profil')][@selected='true']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')][@text='${alamatklinik}']   ${timeout}
  # tab fasilitas
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Fasilitas')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')][@selected='true']
  # tab layanan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Layanan')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')][@selected='true']    ${timeout}
  # tab Komentar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Komentar')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='true']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtcomment')]   ${timeout}
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btncomment')]    ${timeout}
  # tab dokter
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Dokter')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Dokter')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Dokter')][@selected='true']    ${timeout}
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Klinik']    ${timeout}

Direktori Gym Health Club & Detail
  #masuk ke direktori Gym & Health Club
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Klinik']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Klinik']
  # buka pilihan direktori
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Direktori')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Gym & Health Club']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Gym & Health Club']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']
  # masuk ke halaman direktori Gym & Health Club
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Gym & Health Club']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')][@text='Gym & Health Club']    ${timeout}
  # buka detail Gym & Health Club
  ${namagym}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${namagym}
  ${alamatgym}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')]
  Log    ${alamatgym}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namagym}']
  #masuk ke halaman Gym & Health Club
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Gym & Health Club']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namagym}']   ${timeout}
  # tab profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Profil')][@selected='true']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')][@text='${alamatgym}']   ${timeout}
  # tab fasilitas
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Fasilitas')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')][@selected='true']
  # tab layanan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Layanan')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')][@selected='true']    ${timeout}
  # tab Komentar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Komentar')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='true']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtcomment')]   ${timeout}
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btncomment')]    ${timeout}
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Gym & Health Club']    ${timeout}

Direktori Spa Massage & Detail
  #masuk ke direktori Spa & Massage
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Gym & Health Club']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Gym & Health Club']
  # buka pilihan direktori
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Direktori')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Spa & Massage']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Spa & Massage']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']
  # masuk ke halaman direktori Spa & Massage
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Spa & Massage']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')][@text='Spa & Massage']    ${timeout}
  # buka detail Spa & Massage
  ${namaspa}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${namaspa}
  ${typespa}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')]
  Log    ${typespa}
  ${alamatspa}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')]
  Log    ${alamatspa}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namaspa}']
  #masuk ke halaman Gym & Health Club
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Spa & Massage']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namaspa}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='${typespa}']   ${timeout}
  # tab profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Profil')][@selected='true']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')][@text='${alamatspa}']   ${timeout}
  # tab fasilitas
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Fasilitas')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')][@selected='true']
  # tab layanan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Layanan')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')][@selected='true']    ${timeout}
  # tab Komentar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Komentar')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='true']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtcomment')]   ${timeout}
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btncomment')]    ${timeout}
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Spa & Massage']    ${timeout}


Direktori Healthy Food Beverage & Detail
  #masuk ke direktori Healthy Food & Beverage
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Spa & Massage']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Spa & Massage']
  # buka pilihan direktori
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Direktori')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Healthy Food & Beverage']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Healthy Food & Beverage']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']
  # masuk ke halaman direktori Healthy Food & Beverage
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Healthy Food & Beverage']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')][@text='Healthy Food & Beverage']    ${timeout}
  # buka detail Healthy Food & Beverage
  ${namahfb}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${namahfb}
  ${typehfb}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')]
  Log    ${typehfb}
  ${alamathfb}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')]
  Log    ${alamathfb}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namahfb}']
  #masuk ke halaman Healthy Food & Beverage
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Healthy Food & Beverage']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namahfb}']   ${timeout}
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='${typehfb}']   ${timeout}
  # tab profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Profil')][@selected='true']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')][@text='${alamathfb}']   ${timeout}
  # tab fasilitas
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Fasilitas')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')][@selected='true']
  # tab layanan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Layanan')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')][@selected='true']    ${timeout}
  # tab Komentar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Komentar')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='true']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtcomment')]   ${timeout}
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btncomment')]    ${timeout}
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Healthy Food & Beverage']    ${timeout}

Direktori Beauty & Detail
  #masuk ke direktori Beauty
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Healthy Food & Beverage']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Healthy Food & Beverage']
  # buka pilihan direktori
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Direktori')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Beauty']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Beauty']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']
  # masuk ke halaman direktori Beauty
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Beauty']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')][@text='Beauty']    ${timeout}
  # buka detail Beauty
  ${namabeauty}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${namabeauty}
  ${typebeauty}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')]
  Log    ${typebeauty}
  ${alamatbeauty}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')]
  Log    ${alamatbeauty}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namabeauty}']
  #masuk ke halaman Beauty
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Beauty']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namabeauty}']   ${timeout}
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='${typehfb}']   ${timeout}
  # tab profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Profil')][@selected='true']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')][@text='${alamatbeauty}']   ${timeout}
  # tab fasilitas
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Fasilitas')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')][@selected='true']
  # tab layanan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Layanan')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')][@selected='true']    ${timeout}
  # tab Komentar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Komentar')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='true']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtcomment')]   ${timeout}
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btncomment')]    ${timeout}
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Beauty']    ${timeout}

Direktori Lab & Detail
  #masuk ke direktori Lab
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Beauty']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Beauty']
  # buka pilihan direktori
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Direktori')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Lab']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Lab']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']
  # masuk ke halaman direktori Lab
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Lab']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')][@text='Lab']    ${timeout}
  # buka detail Lab
  ${namalab}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${namalab}
  ${typelab}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_directory_type')]
  Log    ${typelab}
  ${alamatlab}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')]
  Log    ${alamatlab}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namalab}']
  #masuk ke halaman Lab
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Lab']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namalab}']   ${timeout}
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='${typehfb}']   ${timeout}
  # tab profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Profil')][@selected='true']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_address')][@text='${alamatlab}']   ${timeout}
  # tab fasilitas
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Fasilitas')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Fasilitas')][@selected='true']
  # tab layanan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Layanan')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Layanan')][@selected='true']    ${timeout}
  # tab Komentar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Komentar')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='true']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtcomment')]   ${timeout}
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btncomment')]    ${timeout}
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Lab']    ${timeout}

Direktori Praktisi & Detail
  #masuk ke direktori Praktisi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Lab']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Lab']
  # buka pilihan direktori
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Direktori')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Praktisi']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='Praktisi']
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']   ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/done')][@text='Selesai']
  # masuk ke halaman direktori Praktisi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTitle')][@text='Praktisi']    ${timeout}

  # buka detail Praktisi
  ${namaprak}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${namaprak}
  ${specialprak}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')]
  Log    ${specialprak}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namaprak}']
  #masuk ke halaman Praktisi
  Recent Aplikasi
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Praktisi']    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${namaprak}']   ${timeout}
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_specialist')][@text='${typehfb}']   ${timeout}
  # tab profile
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Profil')][@selected='true']   ${timeout}
  # tab Jadwal
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Jadwal')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Jadwal')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Jadwal')][@selected='true']
  # tab Komentar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Komentar')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Komentar')][@selected='true']    ${timeout}
  Page Should Contain Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/txtcomment')]   ${timeout}
  Page Should Contain Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/btncomment')]    ${timeout}
  # bagikan
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/action_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Praktisi']    ${timeout}
