class UsersController < ApplicationController
    wrap_parameters :user, include:[:name,:email,:password]
    def new
        @user=User.new
    end

    def create
        @user=User.new(name: params[:name], email: params[:email], password:params[:password])
        if @user.save
            redirect_to("/")
        end
    end
end
