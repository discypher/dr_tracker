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
    @system = System.new(system_params)

    respond_to do |format|
      if @system.save
        format.html { redirect_to @system, notice: 'System was successfully created.' }
        format.json { render :show, status: :created, location: @system }
      else
        format.html { render :new }
        format.json { render json: @system.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @system.update(system_params)
        format.html { redirect_to @system, notice: 'System was successfully updated.' }
        format.json { render :show, status: :ok, location: @system}
      else
        format.html { render :edit }
        format.json { render json: @system.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @system.destroy
    respond_to do |format|
      format.html { redirect_to systems_url, notice: 'System was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_system
    @system = System.find(params[:id])
  end

  def system_params
    params.require(:system).permit(:description, :doc_link, :team_id, :priority_id)
  end
end
