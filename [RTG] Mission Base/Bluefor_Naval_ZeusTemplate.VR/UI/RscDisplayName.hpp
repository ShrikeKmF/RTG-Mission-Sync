class RscDisplayName
{
	idd = 1234;
	class ControlsBackground
	{
		class Background : RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X;
			y = GUI_GRID_CENTER_Y;
			w = 40 * GUI_GRID_CENTER_W;
			h = 25 * GUI_GRID_CENTER_H;
			colorBackground[] = {0,0,0,0.8};
		};
	};
	class Controls
	{
		class ClickMe : RscButton
		{
			idc = -1;
			text = "Click Me!";
			onButtonClick = "hint 'You clicked the button!';";
			x = GUI_GRID_CENTER_X + 10 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 12 * GUI_GRID_CENTER_H;
			w = 20 * GUI_GRID_CENTER_W;
			h = 1 * GUI_GRID_CENTER_H;
		};
	};
};

#include "\a3\ui_f\hpp\definecommongrids.inc"