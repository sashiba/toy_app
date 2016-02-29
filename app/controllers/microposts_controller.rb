class MicropostsController < ApplicationController
  def index
    @microposts = Micropost.all
  end

  def show
    @micropost = Micropost.find(params[:id])
  end

  def new
    @micropost = Micropost.new
  end

  def create
    @micropost = Micropost.create!(micropost_params)
    redirect_to microposts_path
  end

  def edit
    @micropost = Micropost.find(params[:id])
  end

  def update
    @micropost = Micropost.find(params[:id])
    @micropost.update!(micropost_params)
    redirect_to micropost_path(@micropost)
  end

  def destroy 
    @micropost = Micropost.find(params[:id])
    @micropost.destroy
    redirect_to micropost_path
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content, :user_id)
  end
end
