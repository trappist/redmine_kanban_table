ActionController::Routing::Routes.draw do |map|
  map.kanban '/kanban/:id', :controller => 'kanban', :action => 'index' 
end
