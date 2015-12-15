Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  namespace :api do
    resources :sites, only: [], param: :fqdn do
      resources :articles, only: :index
      resources :categories, only: :index
    end
  end
end
