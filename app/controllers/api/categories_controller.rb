class Api::CategoriesController < ApplicationController
  def index
    categories = Site.find_by!(fqdn: params[:site_fqdn]).categories

    render json: categories
  end

  def show
    category = Site.find_by!(fqdn: params[:site_fqdn]).categories.find_by!(slug: params[:slug])

    render json: category
  end
end
