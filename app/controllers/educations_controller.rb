class EducationsController < ApplicationController

  def index
    @educations = Education.all
    render :index
  end

  def show
    @education = Education.find_by(id: params[:id])
    render :show
  end

end

