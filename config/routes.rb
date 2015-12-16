Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  root to: redirect('/admin')

  namespace :api do
    resources :sites, only: [] do
      resources :articles, only: %i(index show)
      resources :categories, only: %i(index show), param: :slug
    end
  end
end
