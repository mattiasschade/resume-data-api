class CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all 
    render :index
  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    render :show
  end

end
