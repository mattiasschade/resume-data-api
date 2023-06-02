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
      student_id: params[:student_id]
    )
    
    if @experience.save
      render :show
    else
      render json: { errors: @experience.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @experience = Experience.find_by(id: params[:id])
    @experience.update(
      start_date: params[:start_date] || @experience.start_date,
      end_date: params[:end_date] || @experience.end_date,
      job_title: params[:job_title] || @experience.job_title,
      company_name: params[:company_name] || @experience.company_name,
      details: params[:details] || @experience.details,
      student_id: params[:student_id] || @experience.student_id
    )
    
    @experience.save
    render :show
  end

  def destroy
    @experience = Experience.find_by(id: params[:id])
    @experience.destroy
    render json: { message: "Experience destroyed successfully" }
  end
end
