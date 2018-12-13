*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Library    DatabaseLibrary
Library    DateTime

Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Permission_Resource.robot

*** Keywords ***
Explore Event List
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonExplore')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonExplore')]
  #pilih Event
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonEvent')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonEvent')]

Event reservation
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Event')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]    ${timeout}
  ${tanggal}    Get Current Date    result_format=%b
  Log    ${tanggal}
  #masuk ke detail event
  Click Element    //android.widget.TextView[contains(@text,'${tanggal}')]
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonBack')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]    ${timeout}
  # cari tombol RSVP
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-rsvp}   Convert To String    ${lebars}
  ${x2-rsvp}   Convert To String    ${lebars}
  ${y1-rsvp}   Convert To String    ${tinggis}
  ${y2-rsvp}   Evaluate    ${tinggis} - 500
  #Scroll feed sampai dapat judul yang dimaksud (tipe journal)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonRSVP')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-rsvp}    ${y1-rsvp}    ${x2-rsvp}    ${y2-rsvp}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonRSVP')]
  #masuk konfirmasi hadir
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Contact the following Contact Person for a formal reservation')]    ${timeout}
  ${coming_no}   Run Keyword And Return Status    Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonAttend')]
  ${coming_yes}   Run Keyword And Return Status    Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonDoYouWantToAttend')]
  Run Keyword If    ${coming_yes}    Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonDoYouWantToAttend')]
  Run Keyword If    ${coming_no}    Run Keywords    Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonAttend')]
  ...   AND   Log    Event sudah direservasi

Kembali ke detail event
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonBack')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonBack')]
  #halaman detail event
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonRSVP')]    ${timeout}

Bookmark Event Detail
  #scroll sampai halaman paling atas
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - ${tinggiy}
  ${x1-home}   Convert To String    ${lebars}
  ${x2-home}   Convert To String    ${lebars}
  ${y1-home}   Convert To String    ${tinggis}
  ${y1-home}   Evaluate    ${tinggis} + 300
  ${y2-home}   Evaluate    ${y1-home} + 500
  Log    ${x1-event}
  Log    ${x2-event}
  Log    ${y1-event}
  Log    ${y2-event}
  #Scroll artikel sampai atas (sampai dapat tombol ubah status sudah hamil)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-event}    ${y1-event}    ${x2-event}    ${y2-event}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Bookmark')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Bookmark')]
  #bookmark succesfull snackbar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'bookmark succesfull')]    ${timeout}

Unbookmark Event Detail
  Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Unbookmark')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Unbookmark')]
  #unbookmark succesfull snackbar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Unbookmark succesfull')]    ${timeout}

Share Event
  Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Share')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Share')]
  #muncul pilihan share
  Wait Until Page Contains Element    //android.widget.TextView[contains(@resource-id,'android:id/title_default')]    ${timeout}
  Press Keycode    4    #back

Add Event To Calendar
  Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Add to calendar')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Add to calendar')]
  Permission_Calendar
  #muncul pilihan share
  Wait Until Page Contains Element    //android.widget.Button[contains(@resource-id,'com.samsung.android.calendar:id/action_done')]   ${timeout}
  Click Element    //android.widget.Button[contains(@resource-id,'com.samsung.android.calendar:id/action_done')]
  Wait Until Page Does Not Contain Element    //android.widget.Button[contains(@resource-id,'com.samsung.android.calendar:id/action_done')]   ${timeout}

Kembali ke List Event
  Sleep    2s
  Press Keycode    4    #back
  Wait Until Page Does Not Contain Element    //android.widget.TextView[contains(@text,'Add to calendar')]    ${timeout}
  #kembali ke event List
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonBack')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Event')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonEventSearch')]   ${timeout}

Search Event
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonEventSearch')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonEventSearch')]
  #masuk ke halaman search
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'We are really sad we could not find anything')]   ${timeout}
  Wait Until Page Contains Element    locator

Pilih tab bookmark
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'BOOKMARK')]   ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'BOOKMARK')]
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonShare')]   ${timeout}





Explore Learning List
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonExplore')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonExplore')]
  #pilih Learning
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonLearning')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonLearning')]
