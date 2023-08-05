class ProjectAdminsController < ApplicationController
  before_action :set_project, only: %i[new]
  def index
    @projects = ProjectAdmin.where(user_id: current_user)
  end

  def new
    if @project.user != current_user
      return redirect_to root_path, notice: 'No Access'
    end
    @admin_users = @project.project_admins.map(&:user)
    @project_admin = ProjectAdmin.new
    end
    
    def create
      @project = Project.find(params[:project_id])
      @project_admin = ProjectAdmin.new(project_admin_params)
      @project_admin.project_id = @project.id
      if @project_admin.save
        redirect_to project_path(@project), notice: "Project suggestion created successfully."
      else
        redirect_to new_project_project_admin_path(@project,@project_admin), notice: "This user has already been suggested this project."
      end
    end

    private

    def set_project
      @project = Project.find(params[:project_id])
    end

    def project_admin_params
      params.require(:project_admin).permit(:user_id, :project_id)
    end

  end
