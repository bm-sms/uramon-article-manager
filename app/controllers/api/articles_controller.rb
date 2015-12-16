class Api::ArticlesController < ApplicationController
  def index
    render json: find_articles.as_json(include: :category)
  end

  def show
    render json: find_articles.find(params[:id]).as_json(include: :category)
  end

  private

  def find_articles
    Site.find_by!(fqdn: params[:site_fqdn]).articles.published
  end
end
