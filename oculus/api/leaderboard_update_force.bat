@echo off

set ACCESS_TOKEN=-d "access_token="
set API_NAME=-d "api_name="
set SCORE=-d "score=1"
set BASE64=-d "extra_data_base64=T271bHVz"
set FORCE_UPDATE=-d "force_update=true"

curl %ACCESS_TOKEN% %API_NAME% %SCORE% %BASE64% %FORCE_UPDATE% https://graph.oculus.com/leaderboard_submit_entry

PAUSE