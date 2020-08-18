@echo off

set /p ACCESS_TOKEN="Access Token (OC|AppId|AppSecret): "
set /p MODERATED_ROOM_ID="MODERATED_ROOM_ID: "

curl -d "access_token=%ACCESS_TOKEN%" -X DELETE https://graph.oculus.com/%MODERATED_ROOM_ID%

PAUSE