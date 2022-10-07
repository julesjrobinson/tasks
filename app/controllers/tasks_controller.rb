class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render template: "tasks/index"
  end

  def new
    @task = Task.new
    render template: "tasks/new"
  end

  def create
    @task = Task.new(
      name: params[:task][:name],
      description: params[:task][:description],

    )
    @task.save
    redirect_to "/tasks"
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    redirect_to "/tasks", status: :see_other
  end
end
