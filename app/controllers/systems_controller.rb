class SystemsController < ApplicationController
  before_action :set_system, only: [:show, :edit, :update, :destroy]

  def index
    @systems = System.all
  end

  def show
  end

  def new
    @system = System.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def delete
  end

  private

  def set_system
    @system = System.find(params[:id])
  end

  def system_params
    params.require(:system).permit(:description, :doc_link, :team_id, :priority_id)
  end
end
