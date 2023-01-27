class TaskController < ApplicationController
  def index
    @tasks = Task.all()
    render json: @tasks.as_json
  end

  def show
    @task = Task.find_by(id: params[:id])
    render json: @task.as_json
  end

  def create
    p params
    task = Task.new
    task.title = params[:title]
    task.date = params[:task]
    task.status = params[:date]
    task.description = params[:description]
    task.deadline = params[:deadline]

    task.save
    render json: task.as_json
  end

  def update
    task = Task.find_by(id: params[:id])
    task.title = params[:title] || task.title
    task.task = params[:task] || task.task
    task.date = params[:date] || task.date
    task.save
    render json: task.as_json
  end

  def destroy
    task = Task.find_by(id: params[:id])
    task.delete
    render json: { message: "task has been removed" }
  end
end
