sleep 2;

_camera = "camera" camcreate [8894.93,9067.25,58.9425];
_camera cameraeffect ["internal", "back"]; // Enter Camera

showcinemaBorder true;

_camera camPreparePos [8894.93,9067.25,58.9425]; // start
_camera camPrepareTarget [6721.35,8371.68,4.95042]; // target
_camera camPrepareFOV 0.740;
_camera camCommitPrepared 0;

_camera camPreparePos [8253.89,8908.72,54.5558]; // p1
_camera camPrepareFOV 0.740;
_camera camCommitPrepared 9;

sleep 9;

titlecut ["","",2];
["Operation ","North West Anizay", "September 2024"] spawn BIS_fnc_infoText;

sleep 1;

_camera camPreparePos [7610.11,8749.52,97.9607]; // p2
_camera camPrepareFOV 0.740;
_camera camCommitPrepared 9;

sleep 9;

_camera camPreparePos [6908.76,8576.08,118.551]; // p3
_camera camPrepareFOV 0.740;
_camera camCommitPrepared 9;

sleep 9;

_camera camPreparePos [6286.81,8422.26,114.528]; // p4
_camera camPrepareFOV 0.740;
_camera camCommitPrepared 9;
_camera cameraeffect ["terminate", "back"]; // Exit Camera

camDestroy _camera;