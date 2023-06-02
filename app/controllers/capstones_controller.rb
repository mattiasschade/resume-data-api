class CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all 
    render :index
  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    render :show
  end

  # def new
  #   @capstone = Capstone.new
  #   render :new
  # end

  def create
    @capstone = Capstone.create(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      student_id: params[:student_id]
    )
    if @capstone.save
      render :show
    else
      render json: {errors: @capstone.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # def edit
  #   @capstone = Capstone.find_by(id: params[:id])
  #   render :edit
  # end

  def update
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.update(
     
      name: params[:name] || @capstone.name,
      description: params[:description] || @capstone.description,
      url: params[:url] || @capstone.url,
      student_id: params[:student_id] || @capstone.student_id
    )
    render :show
  end

  def destroy
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.destroy
    render json: {message: "Capstone deleted"}
  end

end
