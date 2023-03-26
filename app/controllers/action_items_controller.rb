class ActionItemsController < ApplicationController
  def index
    @action_items = ActionItem.all
  end

  def show
    @action_item = ActionItem.find(params[:id])
  end

  def create
    @action_item = ActionItem.new(action_item_params)
    if @action_item.save
      redirect_to @action_item
    else
      render 'new'
    end
  end

  def update
    @action_item = ActionItem.find(params[:id])
    if @action_item.update(action_item_params)
      redirect_to @action_item
    else
      render 'edit'
    end
  end

  def destroy
    @action_item = .find(params[:id])
    @action_item.destroy
    redirect_to action_items_path
  end

  private

  def action_item_params
    params.require(:action_item).permit(:title, :description)
  end
end
