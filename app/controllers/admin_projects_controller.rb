class AdminProjectsController < ApplicationController
  def index
    @projects = ProjectAdmin.where(user_id: current_user)
  end
end
