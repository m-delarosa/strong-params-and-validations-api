class UsersController < ApplicationController

  def index
    @users = User.all 

    render json: @users 
  end

  def show
    @user = User.find(params[:id])

    render json: @user
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render status: 418
    end
  end
  
  def update
  end
  
  def destroy
  end

  private

  def user_params 
    params.require(:user).permit([:name, :username, :email])
  end

end

# const newUser = {"user": {
#   "name": "Jared",
#   "username": "junior",
#   "email": "jared@mail.com",
#   "anotherone": "did it make it?",
#   "this_attribute": 
# }}


# fetch('http://localhost:3000/users', {
#   method: "POST",
#   headers: {
#     "Content-Type": "application/json"
#   },
#   body: JSON.stringify(newUser)
# })
# .then(response => response.json())
# .then(result => console.log(result))
