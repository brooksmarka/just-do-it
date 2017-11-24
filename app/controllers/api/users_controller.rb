class Api::UsersController < ApplicationController
  before_action :authenticated?

  def index

    users = User.all

    render json: users, each_serializer: UserSerializer
  end

  def create
    user = User.new(user_params)
    binding.pry
    if user.save
     render json: user
    else
     render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    binding.pry
    params.require(:user).permit(:name, :password_digest, :email)  #should this be password_digest?
  end

end


#user1 = User.new(id: 1, name:"Tester1", email:"tester@test.com", password:"password1")
