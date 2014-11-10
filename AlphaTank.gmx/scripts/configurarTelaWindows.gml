// argument0 = baseGameWidth.
// argument1 = baseGameHeight.


var baseGameWidth = argument0;
var baseGameHeight = argument1;
var max_width = window_get_width();
var max_height = window_get_height();
var aspect = max_width/max_height;

    if(max_width > max_height){
    
        var VIEW_HEIGHT = max(baseGameHeight, max_height);
        var VIEW_WIDTH = VIEW_HEIGHT * aspect;   
        
    }
    /*
    show_message("baseGameWidth: " + string(baseGameWidth));
    show_message("baseGameHeight: " + string(baseGameHeight));
    show_message("max_width: " + string(max_width));
    show_message("max_height: " + string(max_height));
    show_message("aspect: " + string(aspect));
    show_message("VIEW_HEIGHT: " + string(VIEW_HEIGHT));
    show_message("VIEW_WIDTH: " + string(VIEW_WIDTH));
    */
    view_wview[0] = floor(VIEW_WIDTH);
    view_hview[0] = floor(VIEW_HEIGHT);
    view_wport[0] = max_width;
    view_hport[0] = max_height;
    view_enabled = true;
    view_visible = true;
    surface_resize(application_surface, view_wview[0], view_hview[0]);