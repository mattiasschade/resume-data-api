class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def new
    @skill = Skill.new
    render :new
  end
  def create
    @skill = Skill.create(
      skill_name: params[:skill_name],
    )
    render :show
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render :show
  end

  def edit
    @skill = Skill.find_by(id: params[:id])
    render :edit
  end
  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.skill_name = params[:skill_name] || @skill.skill_name
    @skill.save
    render :show
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy
    render json: { message: "skill deleted successfully"}
  end

end
