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
Masuk Webinar
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonWebinar')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonWebinar')]
  #masuk ke halaman webinar
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'Webinar')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonWebinarSearch')]   ${timeout}
  
