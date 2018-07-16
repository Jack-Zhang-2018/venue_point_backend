class UsersController < ApplicationController

def create

  user = User.create(user_params)
    if user.valid?
      render json: user
     else
       render json: user.errors, status: :unprocessable_entity
     end
  end


end
