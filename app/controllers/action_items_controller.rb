class ActionItemsController < ApplicationController
  before_action :authenticate_user!

  before_action :get_project
  before_action :get_phase

  def index
    @user = current_user
    @action_items = ActionItem.all
  end

  def show
    @action_item = ActionItem.find(params[:id])
  end

  def new
    @action_item = @phase.action_items.build
  end

  def create
    @action_item = @phase.action_items.build(action_item_params)
    if @action_item.save
      redirect_to project_phase_path(@project, @phase)
    else
      render 'new'
    end
  end

  def edit
    @action_item = ActionItem.find(params[:id])
  end

  def update
    @action_item = ActionItem.find(params[:id])
    if @action_item.update(action_item_params)
      redirect_to project_phase_path(@project, @phase)
    else
      render 'edit'
    end
  end

  def destroy
    @action_item = ActionItem.find(params[:id])
    @action_item.destroy
    redirect_to project_path(@project)
  end

  private

  def action_item_params
    params.require(:action_item).permit(:title, :description)
  end

  def get_project
    @project = Project.find(params[:project_id])
  end

  def get_phase
    @phase = Phase.find(params[:phase_id])
  end

end
