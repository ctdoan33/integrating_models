class UsersController < ApplicationController
    def index
        render json: User.all
    end
    def new
    end
    def show
        render json: User.find_by(id: params[:id].to_i)
    end
    def edit
        @user = User.find_by(id: params[:id].to_i)
    end
    def create
        User.create(name: params[:name])
        redirect_to "/users"
    end
    def total
        render plain: "#{User.all.count} total users"
    end
end
