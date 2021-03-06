class Api::ArticlesController < ApplicationController
  def index
    render json: find_articles.as_json(include: :category)
  end

  def show
    render json: find_articles.find(params[:id]).as_json(include: :category)
  end

  private

  def find_articles
    articles = Site.find(params[:site_id]).articles.published

    articles = articles.eager_load(:category).where(:categories => {slug: params[:category_slug]}) if params[:category_slug]

    articles
  end
end
