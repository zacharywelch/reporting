class Reports::TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def index
    @tasks = taskable.all.map { |t| Reports::Task.new(t) }
    respond_with(@tasks)
  end

  def show
    respond_with(@task)
  end

  def create
    @task = Reports::Task.new(taskable.new(task_params))
    @task.save
    respond_with @task
  end

  private

  def taskable
    request.path.split('/tasks').first.classify.constantize
  end

  def set_task
    @task = Reports::Task.new(taskable.find(params[:id]))
  end

  def task_params
    params.require(:task).permit(:format)
  end
end
