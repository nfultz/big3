

seasons :
	wget -x https://api.big3.com/schedule/2018
	wget -x https://api.big3.com/schedule/2019
	wget -x https://api.big3.com/schedule/2021

games :
	jq .apiResults[0].league.season.eventType[0].events[].eventId  api.big3.com/schedule/* | xargs printf "https://api.big3.com/boxscore/%s\n" | wget -i - -nc -x
