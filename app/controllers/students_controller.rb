class StudentsController < ApplicationController


  def index
    @students = Student.all
    render :index
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end
  
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin: params[:linkedin],
      twitter: params
    )
    if @student.save
      render :show
    else
      render :new, status: :unprocessable_entity
    end
  end
end
