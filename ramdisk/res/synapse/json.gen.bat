#!/system/bin/sh

cat << CTAG
{
    name:Battery,
    elements:[
	{ SDescription:{ 
		description:"Device charging currents are composed of input current coming into the device (Nominal 5V) and charge current fed to the battery (Battery Charge Voltage). Charger detection divides charging cable types into several categories as described below. If charging current exceeds input load, then charging current is dynamically adjusted. For avoiding battery deterioration, charging currents of less than 0.7 Coloumb are advised; ex. 3000mAh (Capacity) * 0.7C = ~2100mA."
	}},
	{ SSpacer:{
		height:1
	}},
	{ SPane:{
		title:"Battery Info"
	}},
        { SLiveLabel:{
                  action:"charge-source"
        }},
	{ SLiveLabel:{
		refresh:1000,
		action:"live batttype"
	}},
	{ SLiveLabel:{
		refresh:1000,
		action:"live battcurrav"
	}},
	{ SLiveLabel:{
		refresh:1000,
		action:"live battcurrnow"
	}},
	{ SLiveLabel:{
		refresh:9000,
		action:"live battvoltnow"
	}},
	{ SLiveLabel:{
		refresh:1000,
		action:"live batttemp"
	}},
	{ SLiveLabel:{
		refresh:1000,
		action:"live battcapa"
	}},
	{ SLiveLabel:{
		refresh:1000,
		action:"live battstatus"
	}},
	{ SLiveLabel:{
		refresh:9000,
		action:"live batthealth"
	}},
	{ SSpacer:{
		height:1
	}},
	{ SDescription:{ 
		description:" Input is the live current limit coming through the USB port into the device at 5V. Charge is the desired target current to charge the battery. Now is the actual current limit applied to the battery."
	}},
	{ SSpacer:{
		height:1
	}},
	
	{ SSpacer:{
		height:1
	}},
	{ SPane:{
		title:"Battery Scaling Calibration",
		description:" If you are having incorrect battery SCALING issues, this will reset your device battery % to scale correctly to the approximate available mV. Give it a few hours after you reset the gauge. It may still show you funny values for that period, then the battery percentage should be fine after a full charge cycle."
	}},
	{ SSpacer:{
		height:1
	}},
	{ SDescription:{
		description:" 1- Push button < Reset Fuel-Gauge Chip Now >"
	}},
	{ SDescription:{
		description:" 2- Reboot device"
	}},
	{ SDescription:{
		description:" 3- Deplete battery to 5-10 % (NOT ZERO)"
	}},
	{ SDescription:{
		description:" 4- Charge UNINTERUPTED until FULL (don't touch)"
	}},
	{ SDescription:{
		description:" 5- Unplug then use normally. Device should re-calibrate itself"
	}},
	{ SSpacer:{
		height:1
	}},
	{ SButton:{
		label:"Reset Fuel-Gauge Chip Now",
		action:"fuel-gauge fuel-gauge"
	}},
	{ SSpacer:{
		height:1
	}},

	{ SPane:{
		title:"ASV Info"
	}},	
{ SLiveLabel:{
                  title:"ASV Summary",
                  refresh:9000,
                  action:"live asvsum"
        }},
	{ SSpacer:{
		height:1
	}},
{ SLiveLabel:{
		title:"ASV Group Voltages",
		refresh:5000,
		action:"live asvgroup"	
	}},

    ]
}
CTAG
