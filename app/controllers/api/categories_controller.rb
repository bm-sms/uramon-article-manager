class Api::CategoriesController < ApplicationController
  def index
    categories = Site.find_by!(fqdn: params[:site_fqdn]).categories

    render json: categories
  end
end
