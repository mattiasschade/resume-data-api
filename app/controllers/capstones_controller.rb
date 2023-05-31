class CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all 
    render :index
  end
end
