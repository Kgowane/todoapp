class TasksController < ApplicationController
  def index
    
  end

  def create
    @task = Task.new(task_params)
    @task.list = List.find(params[:list_id])
    @task.save!

    redirect_to list_path(params[:list_id])
  end

  private

  def task_params
    params.require(:task).permit(:task, :status)
  end
end
