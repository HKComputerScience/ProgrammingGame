/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
var move = key_right - key_left;
hsp = move*wsp;

if(place_meeting(x+hsp,y,Owall))
{
	hsp=0;
}
x = x + hsp;