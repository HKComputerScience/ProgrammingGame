/// @description Insert description here
// You can write your code in this editor
key_jump = keyboard_check(vk_space);
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
var move = key_right - key_left;
hsp = move*wsp;

vsp = vsp + grv;
if (hsp < 0){
	image_xscale = -1;
	OGUN.image_xscale = -1;
	OGUN.x = x - 32;
	OGUN.y = y ;
	OGUN.GUNDIR = "left";

}
if (hsp > 0){
	image_xscale = 1;
	OGUN.image_xscale = 1;
	OGUN.x = x + 32;
	OGUN.y = y ;
	OGUN.GUNDIR = "right";
	
}
if (hsp == 0){
	if (OGUN.GUNDIR == "left"){
		OGUN.x = x - 32;
	OGUN.y = y ;
	OGUN.image_xscale = -1;
	}
	if (OGUN.GUNDIR == "right"){
		OGUN.x = x + 32;
	OGUN.y = y ;
	OGUN.image_xscale = 1;
	}
	
}
if (place_meeting(x, y+1,Owall) && key_jump){
	vsp = -10;
}


if (place_meeting(x+hsp,y,Owall))
{
	hsp=0;
}
x = x + hsp;

if (place_meeting(x,y +vsp,Owall))
{
	vsp=0;
}
y = y + vsp;
//OGUN.x = x + 32;
//OGUN.y = y ;