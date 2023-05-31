class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end
end
