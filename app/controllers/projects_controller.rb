class ProjectsController < ApplicationController

  before_filter :authorize_for_actions!, only: [:edit]

  def index
  end

  def show
  end

  def edit
  end

  private

    def authorized?
      current_user.admin && project.active
      # current_user.can_edit?(project)
    end

    helper_method :projects
    helper_method :project

    def project
      @project ||= projects.select {|p| p.id == params[:id].to_i }.first
    end

    def projects
      @projects ||= [
        Project.new(12, "New Website", true),
        Project.new(47, "Logo", false)
      ]
    end

end
