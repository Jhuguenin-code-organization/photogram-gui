Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "homepage"})
  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_id", { :controller => "users", :action => "index"})
end
