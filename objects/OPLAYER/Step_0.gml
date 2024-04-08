/// @description Insert description here
// You can write your code in this editor
key_jump = keyboard_check(vk_space);
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
var move = key_right - key_left;
hsp = move*wsp;

vsp = vsp + grv;

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