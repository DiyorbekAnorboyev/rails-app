class PagesController < ApplicationController
  def home
    @projects = Project.where(user_id: current_user.id)
  end
end
