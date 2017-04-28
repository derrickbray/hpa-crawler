Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'scrape_urls/index'
  root 'scrape_urls#index'

  resources :scrape_urls, only: [:index, :show]
 end
