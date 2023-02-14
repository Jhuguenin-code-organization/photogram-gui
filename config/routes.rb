Rails.application.routes.draw do
#homepage
  get("/", { :controller => "application", :action => "homepage"})
  #users
  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_username", { :controller => "users", :action => "show"})
#photos
  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:photo_id", { :controller => "photos", :action => "show"})

  #delete
  get("/delete_photo/:deleted_photo_id", {:controller => "photos", :action => "delete"})

end
