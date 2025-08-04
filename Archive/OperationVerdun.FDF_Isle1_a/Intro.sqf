playMusic "rtg_intro";
0.0 fadeMusic 0.0;
10 fadeMusic 0.5;

sleep 2;
titlecut ["","",2];
["Raider Tactical Group",<t color='#C21BFF'>"Hitman Platoon"<t color='#FFFFF'>, "National Rail Link NR2"] spawn BIS_fnc_infoText;
sleep 10;
titlecut ["","",2];
sleep 6;
["Operation Verdun","Republic of Voltia", "June 2025", "02:30 Local Time"] spawn BIS_fnc_infoText;
sleep 10;
titlecut ["","",2];
sleep 1;