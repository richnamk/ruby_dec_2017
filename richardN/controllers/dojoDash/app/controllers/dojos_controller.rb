class DojosController < ApplicationController
    def index
        @dojo = Dojo.all
        render 'index'
    end
    def new
        render 'new'
    end
    def create
        @dojo = Dojo.create(dojo_params)
        flash[:success] = "Form was submitted."
        redirect_to '/index'
    end
    def show
        @dojo = Dojo.find(params[:id])
        render 'show'
    end
    def edit
        @dojo = Dojo.find(params[:id])
        session[:id] = params[:id]
        return render 'edit'
    end
    def update
        updates = Dojo.find(session[:id]).update(dojo_params)
        redirect_to '/dojos'
    end
    def destroy
        delete = Dojo.find(params[:id]).destroy
        redirect_to '/dojos'
    end
    private 
    def dojo_params
        params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
