/*gpu_set_blendenable(false);

#region DRAW FROZEN IMAGE
if (pause) { // draw frozen image to screen while paused
	surface_set_target(application_surface);
	if (surface_exists(pauseSurf)) draw_surface(pauseSurf, 0, 0);
	else {
		pauseSurf = surface_create(resW, resH);
		buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
	}
	surface_reset_target();
}
#endregion

#region	TOGGLE PAUSE
if (keyboard_check_pressed(ord("P"))){ 
	if (!paused){ // pause
		pause = true;	
		
		// deactivate everything other than this instance
		instance_deactivate_all(true);
		
		// capture this game moment
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
			draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		// backup surface to a buffer
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	} else { // unpause
		pause = false;
		instance_activate_all();
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) surface_free(pauseSurfBuffer);
	}
}
#endregion
*/

