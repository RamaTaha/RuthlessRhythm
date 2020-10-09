/// @description Insert description here
/// @description Getting hit

hp -= other.damage;
flash_white = true;
white_alpha = 1;
with (other)
{
	instance_destroy();	
}
