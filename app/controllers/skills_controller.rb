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

end