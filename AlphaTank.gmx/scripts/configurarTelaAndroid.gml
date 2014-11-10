// argument0 = baseGameWidth.
// argument1 = baseGameHeight.

var baseGameWidth = argument0;
var baseGameHeight = argument1;
var max_width = display_get_gui_width();
var max_height = display_get_gui_height();
var aspect = max_width/max_height;

    if(max_width > max_height){
    
        var VIEW_HEIGHT = max(baseGameHeight, max_height);
        var VIEW_WIDTH = VIEW_HEIGHT * aspect;   
        
    }

    view_wview[0] = floor(VIEW_WIDTH);
    view_hview[0] = floor(VIEW_HEIGHT);
    view_wport[0] = max_width;
    view_hport[0] = max_height;
    view_enabled = true;
    view_visible = true;
    surface_resize(application_surface, view_wview[0], view_hview[0]);