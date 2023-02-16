Rails.application.routes.draw do
#homepage
  get("/", { :controller => "application", :action => "homepage"})
  #users
  get("/users", { :controller => "users", :action => "index"})

  get("/users/:path_username", { :controller => "users", :action => "show"})
#photos
  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:photo_id", { :controller => "photos", :action => "show"})

  #delete photo
  get("/delete_photo/:deleted_photo_id", {:controller => "photos", :action => "delete"})

  #insert photo
  get("/insert_photo", {:controller => "photos", :action => "insert"})

  #update photo
  get("/update_photo/:updated_photo_id", {:controller => "photos", :action => "update"})

  #post comment
  get("/add_comment/:comment_id", {:controller => "photos", :action => "comment"})

  #add user
  get("/add_user", {:controller => "users", :action => "add"})

  #update user
  get("/update_user/:updated_user_id", {:controller => "users", :action => "update"})
end
