class TaskController < ApplicationController
  before_action :authenticate_user!

  def show
  	project = Project.find(params[:project_id])
  	@tasks = project.tasks

  	joined = false 

  	if !current_user.nil? && !current_user.projects.nil?
  		joined = current_user.projects.include?(project)
  	end 

    if joined

    	@task = @tasks.find(params[:id])

    	@next_task = @task.next
    	@prev_task = @task.prev
    else 
      flash[:notice] = "Enroll in this course to access it! :)"
      redirect_to project
    end

  end
end
