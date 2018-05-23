*** Setting ***
Library    AppiumLibrary
Library    BuiltIn

*** Keywords ***
Permission_Phone
  Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message  100s
  Click Element    com.android.packageinstaller:id/permission_allow_button

Permission_Calendar
  Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message  100s
  Click Element    com.android.packageinstaller:id/permission_allow_button

Permission_Confirm
  Wait Until Element Is Visible    android:id/message  100s
  Click Element    android:id/button2

Permission_Camera
  Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message  100s
  Click Element    com.android.packageinstaller:id/permission_allow_button

Permission_Gallery
  Wait Until Page Contains    media,   100s
  Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message  100s
  Click Element    com.android.packageinstaller:id/permission_allow_button

Permission_Location
  Wait Until Element Is Visible    com.android.packageinstaller:id/permission_message   100s
  Click Element    com.android.packageinstaller:id/permission_allow_button
