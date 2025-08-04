// This goes into a seperate .sqf file

// Please for the love of god remove my comments from the code, except for the important ones

// Name it "missionOpening.sqf" if you're copying the code above

// Note that it can be named anything you want it to be, as long as it doesn't conflict with other pre-defined files

// These values are boolean to disable audio from the mission, if you want players to sitll hear audio then don't include this line
enableRadio false;
0 fadeSpeech 0;
0 fadeRadio 0;
0 fadeSound 0;
 

// The intro text

// "sleep" is essentially telling the code to wait for xyz amounts in seconds
// titleText ["", "BLACK FADED", 1];
// sleep 5;

// //Use "\n" as a line break if the text goes on for too long
// titleText ["", "BLACK FADED", 14];
// sleep 7;

// titleText ["", "BLACK FADED", 14];
// sleep 6;

// titleText ["", "BLACK FADED", 14];
// sleep 5;

// The text is double spaced because it looks better, but its up to personal preferance, but it fits in the style of ArmA 3

// Honnestly this code here hurts my brain, if you wanna fuck with it you can just, it's really bloody annoying to deal with

// The line of underscores is to create a divider, because all text is alinged to the centre by default
titleText ["<t color='#ffffff' size='1'>R E P U B L I C   O F   V O L T I A  :  2 0 2 5  <br/>____________________</t><br/><t color='#ffffff' size='5'>Operation Verdun</t>", "BLACK FADED", -1, true, true];
sleep 6;
 
// See comment further above
3 fadeSpeech 1;
3 fadeRadio 1;
10 fadeSound 1;
enableRadio true;
sleep 1;
 
// Sets the background for the text
titleText ["", "BLACK FADED", 1];
sleep 1;
titleText ["", "BLACK IN", 3];
sleep 3;
titleText ["", "PLAIN", 0];
sleep 3;