class PhasesController < ApplicationController
  before_action :authenticate_user!
  before_action :get_project
  before_action :set_phase, only: [:show, :edit, :update, :destroy]

  def index
    @phases = @project.phases
  end

  def show
    # @phase = @project.phases.find(params[:id])
    # @action_item = @phase.action_items.new
    @action_items = @phase.action_items
  end

  def action_items
    @action_items = @phase.action_items
    render 'action_items/index'
  end

  def new
    @phase = @project.phases.build
  end

  def create
    @phase = @project.phases.build(phase_params)
    if @phase.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def edit
    # @project = Project.find(params[:project_id])
    @phase = @project.phases.find(params[:id])
  end

  def update
    # @phase = @project.phases.find(params[:id])
    if @phase.update(phase_params)
      redirect_to project_phase_path(@project, @phase)
    else
      render 'edit'
    end
  end

  def destroy
    # @phase = Phase.find(params[:id])
    @phase.destroy
    redirect_to phases_path
  end

  private

  def phase_params
    params.require(:phase).permit(:title, :description, :due_date, :completed_date, :completed)
  end

  def get_project
    @project = Project.find(params[:project_id])
  end

  def set_phase
    @phase = @project.phases.find(params[:id])
  end
end
