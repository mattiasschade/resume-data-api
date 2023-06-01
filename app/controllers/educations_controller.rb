class EducationsController < ApplicationController

  def index
    @educations = Education.all
    render :index
  end

  def show
    @education = Education.find_by(id: params[:id])
    render :show
  end

  def create
    @education = Education.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
    )
    render :show
  end
end

