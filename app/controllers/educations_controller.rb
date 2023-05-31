class EducationsController < ApplicationController

  def index
    @educations = Education.all
    render :index
  end
end

