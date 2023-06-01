class ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
    render :index
  end 

  def show
    @experience = Experience.find_by(id: params[:id])
    render :show
  end
  
  def create
    @experience = Experience.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
    )
    render :show
  end
end