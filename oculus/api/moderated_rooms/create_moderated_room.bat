@echo off

set /p ACCESS_TOKEN="Access Token (OC|AppId|Secret): "
set /p MAX_USERS="Max Users (n): "

curl -d "access_token=%ACCESS_TOKEN%" -d "max_users=%MAX_USERS%" https://graph.oculus.com/room_moderated_create >> moderated_room_ids.txt

PAUSE