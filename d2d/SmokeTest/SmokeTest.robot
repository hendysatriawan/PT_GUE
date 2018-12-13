*** Setting ***

Library    AppiumLibrary
Library    BuiltIn
Resource    ../Resource/Capability_Device_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Register_Resource.robot
Resource    ../Resource/Permission_Resource.robot
Resource    ../Resource/Feeds_Resource.robot
Resource    ../Resource/Explore_Resource.robot
Resource    ../Resource/CME_Resource.robot
Resource    ../Resource/Webinar_Resource.robot

*** Test Cases ***
# 1.Register
#   [Documentation]   Register Dengan Data yang sudah di whitelist
#   Buka Apps D2D Real Device
#   Force Update
#   Register D2D
#   Close Application

# 2.Login
#   [Documentation]   Login dengan Data yang diregister
#   Buka Apps D2D Real Device
#   Force Update
#   Login D2D
#   Close Application

# 3.Login Facebook
#   [Documentation]   Login dengan akun Facebook
#   Buka Apps D2D Real Device
#   Force Update
#   Login D2D Dengan Data Facebook
#   Close Application
#
# 4.Login Google
#   [Documentation]   Login dengan akun Google
#   Buka Apps D2D Real Device
#   Force Update
#   Login D2D Dengan Data Google
#   Close Application
#
# 3.Lupa Password
#   [Documentation]   Lupa password dengan akun yang sudah diregister
#   Buka Apps D2D Real Device
#   Force Update
#   Forgot Password
#   Login D2D After Forgot
#   Close Application

# 5.Feeds - Journal
#   [Documentation]   Buka Feeds & Detail Feeds Journal
#   Buka Apps D2D Real Device
#   Force Update
#   Login D2D
#   Feeds View Jurnal
#   Feeds View Jurnal Detail
#   Kembali Dari PDF ke Detail Feed
#   Bookmark Feed Detail Jurnal
#   Unbookmark Feed Detail Jurnal
#   Kembali Dari Detail Jurnal ke List Feed
#   # Bookmark Feed List
#   # Unbookmark Feed List

6.Feeds - Guideline
  [Documentation]   Buka Feeds & Detail Feeds Guideline
  Buka Apps D2D Real Device
  Force Update
  Login D2D
  Feeds View Guideline
  ${guide}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Guideline}')]
  Run Keyword If    '${guide}' == 'True'    Run Keywords    Feeds View Guideline Detail
  ...   AND   Kembali Dari Detail Guideline ke List Feed
  ...   AND   Bookmark Feed List Guideline
  ...   AND   Unbookmark Feed List Guideline
  Run Keyword If    '${guide}' == 'False'    Log    Tidak ada Guideline di Feeds

# 7.Feeds - Video
#   [Documentation]   Buka Feeds & Detail Feeds Video
#   Feeds View Video
#   ${video}    Run Keyword And Return Status    Wait Until Page Contains Element    //android.widget.TextView[contains(@text,'${judul_feed_Video}')]
#     Run Keyword If    '${video}' == 'True'    Run Keywords    Feeds View Video Detail
#     ...   AND   Bookmark Feed List Video
#     ...   AND   Unbookmark Feed List Video
#     Run Keyword If    '${video}' == 'False'    Log    Tidak ada Video di Feeds
#
# 8.CME
#   [Documentation]   Buka CME & Add SKP
#   Masuk CME
# --> ini belum selesai
#
# # 8.Explore - Event
# #   [Documentation]   Buka Explore & Pilih Event
# #   Explore Event List
# #   Event reservation
# #   Kembali ke detail event
# #   Bookmark Event Detail
# #   Unbookmark Event Detail
# #   Share Event
# #   Add Event To Calendar
# #   Kembali ke List Event
# #   Search Event
# # --> ini belum selesai
#
# 9.Explore - Learning
#   [Documentation]   Buka Explore & Pilih Learning
#   Explore Learning List
# --> ini belum selesai
#
# 10.Webinar
#   [Documentation]   Buka Webinar
#   Masuk Webinar
