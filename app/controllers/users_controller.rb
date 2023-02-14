class UsersController <ApplicationController

  def index
    User.all
    
    matching_users = User.all
    
    @list_of_users=matching_users.order({:username => :asc})

    render({ :template => "users_templates/index.html.erb"})
  end

  def show
  url_username = params.fetch("path_username")

    matching_username = User.where({ :username => url_username})

@the_user = matching_username.first
    if @the_user ==nil
      redirect_to("/") 
    else 
    render({ :template => "users_templates/show.html.erb"})
    end
  end

end
