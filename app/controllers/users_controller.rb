class UsersController < ApplicationController
    wrap_parameters :user, include:[:name,:email,:password]
    def new
        @user=User.new
    end

    def create
        @user=User.new(params.require(:user).permit(:name,:email,:password))
        if @user.save
            redirect_to("/login")
        end
    end
end
