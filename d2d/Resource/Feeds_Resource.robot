*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Library    DatabaseLibrary

Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Permission_Resource.robot

*** Keywords ***
Feeds View Jurnal
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Feeds')]
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonFeeds')]
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonQRScan')]
  #ambil judul
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Journal')]
  ${judul_feed_jurnal}    Get Text    //android.widget.TextView[contains(@content-desc,'titleJournal')]
  Log    ${judul_feed_jurnal}
  #cari feed tipe journal
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-feed}   Convert To String    ${lebars}
  ${x2-feed}   Convert To String    ${lebars}
  ${y1-feed}   Convert To String    ${tinggis}
  ${y2-feed}   Evaluate    ${tinggis} - 500
  #Scroll feed sampai dapat judul yang dimaksud (tipe journal)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'${judul_feed_jurnal}')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-feed}    ${y1-feed}    ${x2-feed}    ${y2-feed}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s

Feeds View Jurnal Detail
  #ambil judul
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Journal')]
  ${judul_feed_jurnal}    Get Text    //android.widget.TextView[contains(@content-desc,'titleJournal')]
  Log    ${judul_feed_jurnal}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_jurnal}')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'${judul_feed_jurnal}')]
  #masuk ke detail feeds
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Journal')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_jurnal}')]    ${timeout}
  #klik see more & less
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonSeeMore')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonSeeMore')]
  Sleep    2s
  #see less
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-feed}   Convert To String    ${lebars}
  ${x2-feed}   Convert To String    ${lebars}
  ${y1-feed}   Convert To String    ${tinggis}
  ${y2-feed}   Evaluate    ${tinggis} - 500
  #Scroll feed sampai dapat judul yang dimaksud (tipe journal)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonSeeMore')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-feed}    ${y1-feed}    ${x2-feed}    ${y2-feed}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonDownloadPdf')]
  Sleep    2s
  #view pdf
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonDownlaod')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonClose')]   ${timeout}
  Sleep    5s
  #download pdf ke device
  #Scroll feed sampai dapat judul yang dimaksud (tipe journal)
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonDownlaod')]
  Permission_Storage
  Sleep    1s

Bookmark Feed Detail Jurnal
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Journal')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Bookmark')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Bookmark')]
  #bookmark succesfull snackbar
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'bookmark succesfull')]    ${timeout}

Unbookmark Feed Detail Jurnal
  Wait Until Page Does Not Contain Element    //android.widget.TextView[contains(@text,'bookmark succesfull')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Journal')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonMore')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Unbookmark')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'Unbookmark')]
  #bookmark succesfull snackbar
  # Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'unbookmark succesfull')]    ${timeout}

Bookmark Feed List Jurnal
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Journal')]    ${timeout}
  Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]
  #bookmark succesfull snackbar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'bookmark succesfull')]    ${timeout}

Unbookmark Feed List Jurnal
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Journal')]    ${timeout}
  Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]
  #bookmark succesfull snackbar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'unbookmark succesfull')]    ${timeout}

Kembali Dari PDF ke Detail Feed
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonClose')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonClose')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Journal')]    ${timeout}

Kembali Dari Detail Jurnal ke List Feed
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonBack')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonBack')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Feeds')]    ${timeout}

Feeds View Guideline
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Feeds')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonFeeds')]   ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonQRScan')]    ${timeout}
  #cari feed tipe journal
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-feed}   Convert To String    ${lebars}
  ${x2-feed}   Convert To String    ${lebars}
  ${y1-feed}   Convert To String    ${tinggis}
  ${y2-feed}   Evaluate    ${tinggis} - 500
  #Scroll feed sampai dapat judul yang dimaksud (tipe guideline)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'${judul_feed_Guideline}')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-feed}    ${y1-feed}    ${x2-feed}    ${y2-feed}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s

Feeds View Guideline Detail
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Guideline}')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'${judul_feed_Guideline}')]
  #masuk ke pdf Guidleine
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Guideline}')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonDownlaod')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonClose')]   ${timeout}
  Sleep    5s
  #download pdf ke device
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonDownlaod')]
  Permission_Storage
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Downloading!')]    ${timeout}

Kembali Dari Detail Guideline ke List Feed
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonClose')]    ${timeout}
  Sleep    2s
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonClose')]
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Feeds')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Guideline}')]   ${timeout}

Bookmark Feed List Guideline
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Guideline')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Guideline}')]   ${timeout}
  Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]
  #bookmark succesfull snackbar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'bookmark succesfull')]    ${timeout}

Unbookmark Feed List Guideline
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Guideline')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Guideline}')]   ${timeout}
  Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]
  #bookmark succesfull snackbar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'unbookmark succesfull')]    ${timeout}

Feeds View Video
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Feeds')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonFeeds')]   ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonQRScan')]    ${timeout}
  #cari feed tipe journal
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-feed}   Convert To String    ${lebars}
  ${x2-feed}   Convert To String    ${lebars}
  ${y1-feed}   Convert To String    ${tinggis}
  ${y2-feed}   Evaluate    ${tinggis} - 500
  #Scroll feed sampai dapat judul yang dimaksud (tipe guideline)
  : FOR    ${loopCount}    IN RANGE    0    200
  \    ${el}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Guideline')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Swipe    ${x1-feed}    ${y1-feed}    ${x2-feed}    ${y2-feed}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'Guideline')]

Feeds View Video Detail
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Video}')]    ${timeout}
  Click Element    //android.widget.TextView[contains(@text,'${judul_feed_Video}')]
  #masuk ke video
  Sleep    5s
  #back
  Press Keycode    4    #back
  #back ke list feeds
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Feeds')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Video}')]   ${timeout}

Bookmark Feed List Video
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Video')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Video}')]   ${timeout}
  Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]
  #bookmark succesfull snackbar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'bookmark succesfull')]    ${timeout}

Unbookmark Feed List Video
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Video')]    ${timeout}
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Video}')]   ${timeout}
  Wait Until Element Is Visible    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]    ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonBookmark')]
  #bookmark succesfull snackbar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'unbookmark succesfull')]    ${timeout}
