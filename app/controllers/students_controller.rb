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
      twitter: params[:twitter],
      personal_website: params[:personal_website],
      online_resume: params[:online_resume],
      github: params[:github],
      photo: params[:photo],
    )
    if @student.save
      render :show
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin: params[:linkedin],
      twitter: params[:twitter],
      personal_website: params[:personal_website],
      online_resume: params[:online_resume],
      github: params[:github],
      photo: params[:photo],
    )
    render :show
  end
end
