class BlogController < ApplicationController
    def index
        @vlog = Vlog.all
    end
    
    def show
        @vlog = Vlog.find(params[:id])
    end
    
    def new
        @vlog = Vlog.new
    end
    
    def create
        @vlog = Vlog.create(vlog_params)
    end
    
    def destroy
        vlog = Vlog.find(params[:id])
        vlog.destroy
    end
    
    def edit
        @vlog = Vlog.find(params[:id])
    end
    
    def update
        vlog = Vlog.find(params[:id])
        vlog.update(vlog_params)
    end
    
    private
    def vlog_params
        params.require(:vlog).permit(:name, :text)
    end
end
