/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("D"))){

hspd = 4;
sprite_index = spr_fish_west;

} else

if (keyboard_check(ord("A"))){

hspd = -4;
sprite_index = spr_fish_east;
}else{
	hspd = 0
	};


if (keyboard_check(ord("W"))){

vspd = -4;
sprite_index = spr_fish_north;
} else

if (keyboard_check(ord("S"))){

vspd = 4;
sprite_index = spr_fish_south;
}else{
	vspd = 0;
};


if (place_meeting(x+hspd, y, obj_seaweed)){

//collision

}else{

//no collision
x += hspd;

};


if (place_meeting(x, y+vspd, obj_seaweed)){

//collision

}else{

//no collision
y += vspd;

};


if (keyboard_check_pressed(vk_space)){

//audio_play_sound();

}

var cheight = camera_get_view_height (view_camera[0]);
var cwidth = camera_get_view_width(view_camera[0]);

camera_set_view_pos(view_camera[0],x - cwidth/2,y - cheight/2);