class TasksController < ApplicationController
  
  before_action :check_signed_in
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    Task.create(task_params)
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)
  end

  def destroy
    @task.destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.permit(:title, :deadline, :is_finished)
  end

  def check_signed_in
    # ログインしていなければログイン画面に飛ばす
    redirect_to new_user_session_path unless user_signed_in?
  end

end
