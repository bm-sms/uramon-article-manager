Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  root to: redirect('/admin')

  namespace :api do
    resources :sites, only: [], param: :fqdn do
      resources :articles, only: %i(index show)
      resources :categories, only: :index
    end
  end
end
