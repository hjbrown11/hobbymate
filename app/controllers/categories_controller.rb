class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.all
    if params[:categories]
      ids = params[:categories].keys.select do |id|
        params[:categories][id] == "1"
      end
      @categories = Category.where(id: ids)
    end

    if params[:address].present?
      current_user.address = params[:address]
      current_user.save
      raise
    end

    if current_user.address.blank?
      redirect_to root_path, alert: "Please enter a location to continue"
    end
  end

  def show
  end

  private

  def set_category
    @category = Category.find(params[:hobby_id])
  end
end
