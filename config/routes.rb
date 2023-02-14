Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "homepage"})
  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_username", { :controller => "users", :action => "show"})
end
