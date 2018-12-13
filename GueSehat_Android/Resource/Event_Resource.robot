*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Login_Resource.robot

*** Keywords ***
Kembali ke Event dari Detil Event
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # verifikasi halaman event
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Event']   ${timeout}
  Wait Until Page Contains Element    //android.widget.FrameLayout[contains(@resource-id,'com.guesehat.android:id/relative_main_layout')][@index='0']   ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/iv_share')]   ${timeout}


Masuk Halaman Event
  #buka side menu
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Click Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]
  # pilih menu event
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'com.guesehat.android:id/menu_event')]    ${timeout}
  Click Element    //android.widget.LinearLayout[contains(@resource-id,'com.guesehat.android:id/menu_event')]
  # masuk halaman event
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Event']   ${timeout}
  Wait Until Page Contains Element    //android.widget.FrameLayout[contains(@resource-id,'com.guesehat.android:id/relative_main_layout')][@index='0']   ${timeout}
  # masuk ke detail event
  ${judulevent}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')]
  Log    ${judulevent}
  ${tanggalevent}   Get Text    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_date')]
  Log    ${tanggalevent}
  Click Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulevent}']
  # masuk ke detail event
  Permission_Location
  Wait Until Page Contains Element    //android.widget.ImageButton[contains(@content-desc,'Navigasi naik')]   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvTabDetailEvent')][@text='About Event']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tv_title')][@text='${judulevent}']   ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/tvDateEvent')][@text='${tanggalevent}']
  # scroll sampai halaman bawah
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-event}   Convert To String    ${lebars}
  ${x2-event}   Convert To String    ${lebars}
  ${y1-event}   Convert To String    ${tinggis}
  ${y2-event}   Evaluate    ${tinggis} - 700
  #Scroll artikel sampai bawah (sampai dapat artikel berikutnya)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.FrameLayout[contains(@resource-id,'com.guesehat.android:id/map')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-event}    ${y1-event}    ${x2-event}    ${y2-event}
  \    ${loopCount}    Set Variable    ${loopCount}+1

Share Event
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/iv_share')]   ${timeout}
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/iv_share')]
  # muncul opsi share
  Wait Until Page Contains Element    //android.widget.LinearLayout[contains(@resource-id,'android:id/visibleArea')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  # kembali ke detail
  Press Keycode    4    #keycode back
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'com.guesehat.android:id/title_textview')][@text='Event']   ${timeout}
  Wait Until Page Contains Element    //android.widget.FrameLayout[contains(@resource-id,'com.guesehat.android:id/relative_main_layout')][@index='0']   ${timeout}
  Wait Until Page Contains Element    //android.widget.ImageView[contains(@resource-id,'com.guesehat.android:id/iv_share')]   ${timeout}
