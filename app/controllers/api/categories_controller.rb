class Api::CategoriesController < ApplicationController
  def index
    categories = Site.find(params[:site_id]).categories

    render json: categories
  end

  def show
    category = Site.find(params[:site_id]).categories.find_by!(slug: params[:slug])

    render json: category
  end
end
