*** Setting ***
Library    AppiumLibrary
Library    BuiltIn
Library    String

*** Keywords ***
Program Hamil Checklist
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Checklist')]
  #click semua checklist
  # #pemeriksaan laboratorium
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
  : FOR    ${loopCount}    IN RANGE    1    999
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
  : FOR    ${loopCount}    IN RANGE    0    999
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Pemeriksaan Laboratorium')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Click Element    //android.widget.TextView[contains(@text,'Pemeriksaan Laboratorium')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Nutrisi
  Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    //android.widget.TextView[contains(@text,'Nutrisi')]

  #nutrisi
  #Scroll checklist sampai muncul semua
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Nutrisi
  # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # Log    ${countcheckbox}
  : FOR    ${loopCount}    IN RANGE    1    999
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \     ...   AND   Sleep    2s
  \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \    ${loopCount}    Evaluate    ${loopCount} + 1
  \   Log    ${loopCount}
  \    Exit For Loop If    ${loopCount} > 9
  #balik ke atas untuk collapse Nutrisi
  #Scroll artikel sampai atas (collapse Nutrisi)
  : FOR    ${loopCount}    IN RANGE    0    999
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Nutrisi')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Click Element    //android.widget.TextView[contains(@text,'Nutrisi')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Kesehatan
  Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    //android.widget.TextView[contains(@text,'Kesehatan')]
  #
  #kesehatan
  #Scroll checklist sampai muncul semua
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Kesehatan
  # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # Log    ${countcheckbox}
  : FOR    ${loopCount}    IN RANGE    1    999
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \     ...   AND   Sleep    2s
  \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \    ${loopCount}    Evaluate    ${loopCount} + 1
  \   Log    ${loopCount}
  \    Exit For Loop If    ${loopCount} > 5
  # #khusus karena ada checklist yang sudah di checklist di bagian atas
  # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #balik ke atas untuk collapse Kesehatan
  #Scroll artikel sampai atas (collapse Kesehatan)
  : FOR    ${loopCount}    IN RANGE    0    999
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Kesehatan')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Click Element    //android.widget.TextView[contains(@text,'Kesehatan')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Persiapan Kehamilan
  Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    //android.widget.TextView[contains(@text,'Persiapan Kehamilan')]
   #
  #Persiapan Kehamilan
  #Scroll checklist sampai muncul semua
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Persiapan Kehamilan
  # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # Log    ${countcheckbox}
  : FOR    ${loopCount}    IN RANGE    1    999
  \    ${countA}   Get Matching Xpath Count    //android.widget.ImageView[@resource-id='com.temanbumil.android:id/btnArrow']
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[${countA}]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \   Log    ${countA}
  \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[${countA}]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \     ...   AND   Sleep    1s
  \     ...   AND   Log    ${countA}
  \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[7]/android.widget.RelativeLayout/android.widget.CheckBox
  \     ...   AND   Sleep    1s
  \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \     ...   AND   Sleep    1s
  \     ...   AND   Log    ${countA}
  \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[8]/android.widget.RelativeLayout/android.widget.CheckBox
  \     ...   AND   Sleep    1s
  \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[9]/android.widget.RelativeLayout/android.widget.CheckBox
  \     ...   AND   Sleep    1s
  \     ...   AND   Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \     ...   AND   Sleep    1s
  \     ...   AND   Log    ${countA}
  \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[9]/android.widget.RelativeLayout/android.widget.CheckBox
  \    ${loopCount}    Evaluate    ${loopCount} + 1
  \    Log    ${loopCount}
  \    Exit For Loop If    ${loopCount} > 7
  # #khusus karena ada checklist yang sudah di checklist di bagian atas
  # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #balik ke atas untuk collapse Kesehatan
  #Scroll artikel sampai atas (collapse Kesehatan)
  : FOR    ${loopCount}    IN RANGE    0    999
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Persiapan Kehamilan')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Click Element    //android.widget.TextView[contains(@text,'Persiapan Kehamilan')]
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Pemeriksaan Laboratorium
  Page Should Not Contain Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.CheckBox
  Click Element    //android.widget.TextView[contains(@text,'Pemeriksaan Laboratorium')]
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    999
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Cek Tanda Kehamilan')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Click Element    //android.widget.TextView[contains(@text,'Cek Tanda Kehamilan')]
  #Cek Tanda Kehamilan
  #Scroll checklist sampai muncul semua
  Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.temanbumil.android:id/txt_title')]
  Page Should Contain Text    Cek Tanda Kehamilan
  # ${countcheckbox}    Get Matching Xpath Count    //android.widget.CheckBox[@resource-id='com.temanbumil.android:id/check']
  # Log    ${countcheckbox}
  : FOR    ${loopCount}    IN RANGE    1    999
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \    Run Keyword If    ${el}    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[5]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \     ...   ELSE IF   '${el}' == 'False'  Run Keywords    Swipe    ${x1-check}    ${y1-check}    ${x2-check}    ${y2-check}
  \     ...   AND   Sleep    2s
  \     ...   AND   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[4]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[${loopCount}]/android.widget.RelativeLayout/android.widget.CheckBox
  \    ${loopCount}    Evaluate    ${loopCount} + 1
  \   Log    ${loopCount}
  \    Exit For Loop If    ${loopCount} > 6
  # #khusus karena ada checklist yang sudah di checklist di bagian atas
  # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.CheckBox
  #balik ke atas untuk collapse Kesehatan
  #Scroll artikel sampai atas (collapse Kesehatan)
  : FOR    ${loopCount}    IN RANGE    0    999
  \    ${eh}    Run Keyword And Return Status    Wait Until Element Is Visible    //android.widget.TextView[contains(@text,'Cek Tanda Kehamilan')]
  \    Run Keyword If    ${eh}    Exit For Loop
  \    Swipe    ${x1-home}    ${y1-home}    ${x2-home}    ${y2-home}
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Click Element    //android.widget.TextView[contains(@text,'Cek Tanda Kehamilan')]
