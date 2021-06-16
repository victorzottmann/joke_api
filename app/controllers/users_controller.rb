class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    
    if @user.save
      render json: @user, status: 201 # or :create (rails convention)
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    def user_params
      # No need to pass a require method
      params.permit(:username, :email, :password, :password_confirmation)
    end
end
