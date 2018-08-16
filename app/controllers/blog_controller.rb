class BlogController < ApplicationController
    
    before_action :move_to_index, except: [:index, :show]
    
    def index
        @vlog = Vlog.includes(:user).order("id DESC").page(params[:page]).per(5) 
        
    end
    
    def show
        @vlog = Vlog.find(params[:id])
        @user = User.find(@vlog.user_id)
    end
    
    def new
        @vlog = Vlog.new
        @nickname = current_user.nickname
    end
    
    def create
        @vlog = Vlog.create(name: vlog_params[:name], image: vlog_params[:image], text: vlog_params[:text], user_id: current_user.id)
    end
    
    def destroy
        vlog = Vlog.find(params[:id])
        vlog.destroy if vlog.user_id == current_user.id
    end
    
    def edit
        @vlog = Vlog.find(params[:id])
        @user = User.find(@vlog.user_id)
    end
    
    def update
        vlog = Vlog.find(params[:id])
        vlog.update(vlog_params)
        
    end
    
    private
    def vlog_params
        params.require(:vlog).permit(:name, :image, :text)
    end
    
    def move_to_index
        redirect_to action: :index unless user_signed_in?
    end
end
