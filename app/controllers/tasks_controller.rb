class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find params[:id]
  end

  def create
    @task = Task.save task_params
  end

  def update
    @task = Task.find params[:id]
    @task.update_attributes task_params
  end

  def destroy
    @task = Task.find params[:id]
    @task.destroy
  end

private
  def task_params
    params.require(:task).permit :title, :body, :number
  end
end
