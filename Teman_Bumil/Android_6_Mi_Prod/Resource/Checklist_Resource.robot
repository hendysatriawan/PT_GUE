*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Library    String

*** Keywords ***
Kembali ke Homepage Menu Checklist
  #kembali ke homepage
  Wait Until Element Is Visible    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]     100s
  Click Element    //android.widget.ImageView[contains(@resource-id,'com.temanbumil.android:id/btn_actionbar_back')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_mother')]    100s

Program Hamil Checklist
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Checklist')]
  #click semua checklist
  # #pemeriksaan laboratorium
  # #Scroll checklist sampai muncul semua
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'Pemeriksaan Laboratorium')]
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-check}   Convert To String    ${lebars}
  ${x2-check}   Convert To String    ${lebars}
  ${y1-check}   Convert To String    ${tinggis}
  ${y2-check}   Evaluate    ${tinggis} - 200
  # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # Log    ${countcheckbox}
  : FOR    ${loopCount}    IN RANGE    1    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \     ...   AND   Sleep    2s
  \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \    ${loopCount}    Evaluate    ${loopCount} + 1
  \   Log    ${loopCount}
  \    Exit For Loop If    ${loopCount} > 9
  #balik ke atas untuk collapse pemeriksaan laboratorium
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
  ${y2-home}   Evaluate    ${y1-home} + 300
  Log    ${x1-home}
  Log    ${x2-home}
  Log    ${y1-home}
  Log    ${y2-home}
  #Scroll artikel sampai atas (collapse pemeriksaan laboratorium)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Pemeriksaan Laboratorium')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'Pemeriksaan Laboratorium')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Nutrisi
  Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    //android.widget.TextView[contains(@text,'Nutrisi')]

  # #nutrisi
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Nutrisi
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    2s
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \   Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 9
  # #balik ke atas untuk collapse Nutrisi
  # #Scroll artikel sampai atas (collapse Nutrisi)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Nutrisi')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Nutrisi')]
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Kesehatan
  # Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  # Click Element    //android.widget.TextView[contains(@text,'Kesehatan')]
  # #
  # #kesehatan
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Kesehatan
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    2s
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \   Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 5
  # # #khusus karena ada checklist yang sudah di checklist di bagian atas
  # # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  # #balik ke atas untuk collapse Kesehatan
  # #Scroll artikel sampai atas (collapse Kesehatan)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Kesehatan')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Kesehatan')]
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Persiapan Kehamilan
  # Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  # Click Element    //android.widget.TextView[contains(@text,'Persiapan Kehamilan')]
  #  #
  # #Persiapan Kehamilan
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Persiapan Kehamilan
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${countA}   Get Matching Xpath Count    //android.widget.ImageView[@resource-id='com.temanbumil.android:id/btnArrow']
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[${countA}]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \   Log    ${countA}
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[${countA}]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Log    ${countA}
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[7]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Log    ${countA}
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[8]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[9]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Log    ${countA}
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[9]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \    Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 7
  # # #khusus karena ada checklist yang sudah di checklist di bagian atas
  # # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  # #balik ke atas untuk collapse Kesehatan
  # #Scroll artikel sampai atas (collapse Kesehatan)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Persiapan Kehamilan')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Persiapan Kehamilan')]
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Pemeriksaan Laboratorium
  # Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  # Click Element    //android.widget.TextView[contains(@text,'Pemeriksaan Laboratorium')]
  # Sleep    2s
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Cek Tanda Kehamilan')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Cek Tanda Kehamilan')]
  # #Cek Tanda Kehamilan
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Cek Tanda Kehamilan
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    2s
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[4]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \   Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 6
  # # #khusus karena ada checklist yang sudah di checklist di bagian atas
  # # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  # #balik ke atas untuk collapse Kesehatan
  # #Scroll artikel sampai atas (collapse Kesehatan)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Cek Tanda Kehamilan')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Cek Tanda Kehamilan')]

Sedang Hamil Checklist
  Log    sedang hamil checklist week 1
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Checklist')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'1 M')][@selected='true']
  #click semua checklist
  # #pemeriksaan laboratorium
  Log    pemeriksaan laboratorium
  # #Scroll checklist sampai muncul semua
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Pemeriksaan Laboratorium
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-check}   Convert To String    ${lebars}
  ${x2-check}   Convert To String    ${lebars}
  ${y1-check}   Convert To String    ${tinggis}
  ${y2-check}   Evaluate    ${tinggis} - 200
  # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # Log    ${countcheckbox}
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='${loopCount}']
  \    Run Keyword If    ${el}    Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='${loopCount}']
  \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \     ...   AND   Sleep    1s
  \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='5']
  \     ...   AND   Sleep    1s
  \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='${loopCount}']
  \     ...   AND   Sleep    1s
  \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \     ...   AND   Sleep    1s
  \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='${loopCount}']
  \    ${loopCount}    Evaluate    ${loopCount} + 1
  \   Log    ${loopCount}
  \    Exit For Loop If    ${loopCount} > 6
  Log    ${loopCount}
  #balik ke atas untuk collapse pemeriksaan laboratorium
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
  ${y2-home}   Evaluate    ${y1-home} + 300
  Log    ${x1-home}
  Log    ${x2-home}
  Log    ${y1-home}
  Log    ${y2-home}
  #Scroll artikel sampai atas (collapse pemeriksaan laboratorium)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Pemeriksaan Laboratorium')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'Pemeriksaan Laboratorium')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Nutrisi
  Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    //android.widget.TextView[contains(@text,'Nutrisi')]

  # #nutrisi
  # Log    Nutrisi
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Nutrisi
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    2s
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \   Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 6
  # #balik ke atas untuk collapse Nutrisi
  # #Scroll artikel sampai atas (collapse Nutrisi)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Nutrisi')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Nutrisi')]
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Kesehatan
  # Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  # Click Element    //android.widget.TextView[contains(@text,'Kesehatan')]
  #
  # #kesehatan
  # Log    Kesehatan
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Kesehatan
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    2s
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \   Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 4
  # # #khusus karena ada checklist yang sudah di checklist di bagian atas
  # # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  # #balik ke atas untuk collapse Kesehatan
  # #Scroll artikel sampai atas (collapse Kesehatan)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Kesehatan')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Kesehatan')]
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Persiapan Kehamilan
  # Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  # Click Element    //android.widget.TextView[contains(@text,'Persiapan Kehamilan')]
  #
  # #Persiapan Kehamilan
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Persiapan Kehamilan
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${countA}   Get Matching Xpath Count    //android.widget.ImageView[@resource-id='com.temanbumil.android:id/btnArrow']
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[${countA}]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \   Log    ${countA}
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[${countA}]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Log    ${countA}
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[7]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Log    ${countA}
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[8]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[9]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Log    ${countA}
  # \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[9]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \    Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 3

Newborn Checklist
  Log    Newborn checklist
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Checklist')]
  Page Should Contain Element    //android.widget.TextView[contains(@text,'New Born')][@selected='true']
  #click semua checklist
  #Perawatan Dirumah
  Log    Perawatan di Rumah
  #Scroll checklist sampai muncul semua
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Perawatan di Rumah
  ${lebarx}    Get Window Width
  ${tinggiy}   Get Window Height
  ${lebarx}   Convert To Integer    ${lebarx}
  ${tinggiy}  Convert To Integer    ${tinggiy}
  ${lebars}   Evaluate    ${lebarx}/2
  ${tinggis}    Evaluate    ${tinggiy} - 200
  ${x1-check}   Convert To String    ${lebars}
  ${x2-check}   Convert To String    ${lebars}
  ${y1-check}   Convert To String    ${tinggis}
  ${y2-check}   Evaluate    ${tinggis} - 200
  # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # Log    ${countcheckbox}
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='${loopCount}']
  \    Run Keyword If    ${el}    Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='${loopCount}']
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='5']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='${loopCount}']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='${loopCount}']
  \    ${loopCount}    Evaluate    ${loopCount} + 1
  \   Log    ${loopCount}
  \    Exit For Loop If    ${loopCount} > 4
  Log    ${loopCount}
  #balik ke atas untuk collapse Perawatan di Rumah
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
  ${y2-home}   Evaluate    ${y1-home} + 300
  Log    ${x1-home}
  Log    ${x2-home}
  Log    ${y1-home}
  Log    ${y2-home}
  #Scroll artikel sampai atas (collapse pemeriksaan laboratorium)
  : FOR    ${loopCount}    IN RANGE    0    20
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Perawatan di Rumah')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    1s
  Click Element    //android.widget.TextView[contains(@text,'Perawatan di Rumah')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Pemeriksaan saat Lahir oleh Dokter
  Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Sleep    2s
  Click Element    //android.widget.TextView[contains(@text,'Pemeriksaan saat Lahir oleh Dokter')]

  # #Pemeriksaan saat Lahir oleh Dokter
  # Log    Pemeriksaan saat Lahir oleh Dokter
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Pemeriksaan saat Lahir oleh Dokter
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='6']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='${loopCount}']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='${loopCount}']
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \   Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 7
  # #balik ke atas untuk collapse Pemeriksaan saat Lahir oleh Dokter
  # #Scroll artikel sampai atas (collapse Pemeriksaan saat Lahir oleh Dokter)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Pemeriksaan saat Lahir oleh Dokter')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Pemeriksaan saat Lahir oleh Dokter')]
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]    10s
  # Page Should Contain Element    //android.widget.TextView[contains(@text,'Perawat Akan Melakukan Ini selama Si Kecil di Rumah Sakit')]
  # Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  # Sleep    2s
  # Click Element    //android.widget.TextView[contains(@text,'Perawat Akan Melakukan Ini selama Si Kecil di Rumah Sakit')]
  #
  # #Perawat Akan Melakukan Ini selama Si Kecil di Rumah Sakit
  # Log    Perawat Akan Melakukan Ini selama Si Kecil di Rumah Sakit
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Element    //android.widget.TextView[contains(@text,'Perawat Akan Melakukan Ini selama Si Kecil di Rumah Sakit')]
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='4']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='5']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='6']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \   Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 6
  # # balik ke atas untuk collapse Perawat Akan Melakukan Ini selama Si Kecil di Rumah Sakit
  # # Scroll artikel sampai atas (collapse Perawat Akan Melakukan Ini selama Si Kecil di Rumah Sakit)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Perawat Akan Melakukan Ini selama Si Kecil di Rumah Sakit')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Perawat Akan Melakukan Ini selama Si Kecil di Rumah Sakit')]
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Fisik dan Psikologis Mums
  # Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  # Sleep    2s
  # Click Element    //android.widget.TextView[contains(@text,'Fisik dan Psikologis Mums')]
  #
  # #Fisik dan Psikologis Mums
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Fisik dan Psikologis Mums
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[4]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[4]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='2']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='3']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='3']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='4']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \   Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 3
  # # balik ke atas untuk collapse Fisik dan Psikologis Mums
  # # Scroll artikel sampai atas (collapse Fisik dan Psikologis Mums)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Fisik dan Psikologis Mums')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Fisik dan Psikologis Mums')]
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Panduan Menyusui
  # Click Element    //android.widget.TextView[contains(@text,'Lain-lain')]
  # Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  # Sleep    2s
  # Click Element    //android.widget.TextView[contains(@text,'Panduan Menyusui')]
  #
  # #Panduan Menyusui
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Panduan Menyusui
  # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='3']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='4']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='4']
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \   Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 4
  # # balik ke atas untuk collapse Panduan Menyusui
  # # Scroll artikel sampai atas (collapse Panduan Menyusui)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Panduan Menyusui')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Panduan Menyusui')]
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Perawatan di Rumah
  # Click Element    //android.widget.TextView[contains(@text,'Perawatan di Rumah')]
  # Sleep    2s
  # Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  # Click Element    //android.widget.TextView[contains(@text,'Lain-lain')]
  #
  #
  # #Lain-lain
  # #Scroll checklist sampai muncul semua
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Lain-lain
  # # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # # Log    ${countcheckbox}
  # : FOR    ${loopCount}    IN RANGE    1    20
  # \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[6]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[6]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  # \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='3']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='4']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='4']
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='5']
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \     ...   AND   Sleep    1s
  # \     ...   AND   Click Element    //android.widget.CheckBox[contains(@resource-id,'com.temanbumil.android:id/check')][@instance='5']
  # \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  # \    ${loopCount}    Evaluate    ${loopCount} + 1
  # \   Log    ${loopCount}
  # \    Exit For Loop If    ${loopCount} > 4
  # # balik ke atas untuk collapse Lain-lain
  # # Scroll artikel sampai atas (collapse Lain-lain)
  # : FOR    ${loopCount}    IN RANGE    0    20
  # \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Lain-lain')]
  # \    Run Keyword If    ${eh}    Exit For Loop
  # \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  # \    ${loopCount}    Set Variable    ${loopCount}+1
  # Sleep    1s
  # Click Element    //android.widget.TextView[contains(@text,'Lain-lain')]
  # Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  # Page Should Contain Text    Perawatan di Rumah
  # Click Element    //android.widget.TextView[contains(@text,'Perawatan di Rumah')]
