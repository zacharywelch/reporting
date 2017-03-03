class Reports::TasksController < ApplicationController
  before_action :set_task, only: [:show]

  respond_to :html, :json

  def index
    @tasks = Reports::Task.all
    respond_with(@tasks)
  end

  def show
    respond_with(@task)
  end

  def new
    @task = Reports::Task.new
    respond_with(@task)
  end

  def create
    @task = Reports::Task.new(task_params)
    @task.save
    respond_with(@task)
  end

  private

  def set_task
    @task = Reports::Task.find(params[:id])
  end

  def task_params
    params[:reports_task]
  end
end
