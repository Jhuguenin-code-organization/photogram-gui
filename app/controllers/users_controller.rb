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

  def add
  input_user = params.fetch("query_username")

  new_user = User.new

  new_user.username = input_user

  new_user.save

    redirect_to("/users/" + new_user.username)
  end

  def update

  the_username = params.fetch("updated_user_id")

  matching_users = User.where( :username => the_username)

  @the_user = matching_users.first

  updated_username = params.fetch("query_new_username")
  
  @the_user.username = updated_username

  @the_user.save

    redirect_to("/users/" + @the_user.username)
  end
end
