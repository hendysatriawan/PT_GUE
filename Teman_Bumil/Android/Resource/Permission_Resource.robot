*** Setting ***
Library    AppiumLibrary
Library    BuiltIn

*** Keywords ***
Permission_Phone
  Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message  2s
  Click Element    com.android.packageinstaller:id/permission_allow_button
