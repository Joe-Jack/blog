class UsersController < ApplicationController
    def show
        @nickname = current_user.nickname
        @vlogs = Vlog.where(user_id: current_user.id).page(params[:page]).per(5).order("id DESC")
    #     name = Vlog.find(params[:user_id])
    #     @user = User.find(name.)
    end
end
