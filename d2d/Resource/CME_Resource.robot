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
Masuk CME
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonCme')]   ${timeout}
  Click Element    //android.view.ViewGroup[contains(@content-desc,'buttonCme')]
  #masuk ke CME
  Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'CME')]    ${timeout}
  Wait Until Page Contains Element    //android.view.ViewGroup[contains(@content-desc,'buttonCmeHistory')]    ${timeout}

  
