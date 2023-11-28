
function screen_shake(i, j){
	
	with (global.i_camera){
	if (i>shake_remain){
		shake_magnitude = i;
		shake_remain = shake_magnitude;
		shake_length = j;
		
	}
	
	}
}