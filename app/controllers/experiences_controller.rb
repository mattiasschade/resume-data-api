class ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
  end 

  def show
    @experience = Experience.find_by(id: params[:id])
    render :show
  end
end