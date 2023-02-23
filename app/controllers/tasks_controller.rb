class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def show
  end

  def update
    @task.update(task_params)
    redirect_to task_path
  end

  def edit
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:tittle, :details, :completed)
  end

  def set_task
    @task = Taks.find(params[:id])
  end
end
