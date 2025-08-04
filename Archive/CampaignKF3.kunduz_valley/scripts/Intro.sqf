sleep 2;

_camera = "camera" camcreate [4090.29,9744.09,140];
_camera cameraeffect ["internal", "back"]; // Enter Camera

showcinemaBorder true;

_camera camPreparePos [4090.29,9744.09,140]; // start
_camera camPrepareTarget [3900.22,10168.5,10]; // target
_camera camPrepareFOV 0.740;
_camera camCommitPrepared 0;

_camera camPreparePos [3999.23,10070.2,150];
_camera camCommitPrepared 7;
_camera camPrepareTarget [1226.3,8340.52,150]; // target

sleep 7;

_camera camPreparePos [2902.95,9623.43,150]; // p2
_camera camPrepareFOV 0.740;
_camera camCommitPrepared 7;
sleep 2;
titlecut ["","",2];
["Operation Kunduz Freedom III","Kunduz river", "November 2024", "6:20AM Local Time"] spawn BIS_fnc_infoText;

sleep 5;

_camera camPreparePos [1938.11,9017.78,150]; // p3
_camera camPrepareFOV 0.740;
_camera camCommitPrepared 7;

sleep 3;
titlecut ["","",2];
["Forward Operating Base Corinth"] spawn BIS_fnc_infoText;
sleep 4;

_camera camPreparePos [1276.3,8440.52,150]; // p4
_camera camPrepareFOV 0.740;
_camera camCommitPrepared 0;

sleep 0.15;
_camera cameraeffect ["terminate", "back"]; // Exit Camera
camDestroy _camera;