if (!surface_exists(global.shared_surface))
 global.shared_surface = surface_create(1024, 640);
 
return global.shared_surface;
