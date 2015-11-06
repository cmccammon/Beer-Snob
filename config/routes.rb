Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  get "welcome", to: "welcome#index", as: :welcome

  get 'profile/index'

  get 'profile/show'


  get 'beers', to: "beers#index", as: :beers
  get 'beers/:id', to: "beers#show", as: :beers_show

  get 'breweries', to: "breweries#index", as: :breweries
  get 'breweries/:id', to: "breweries#show", as: :breweries_show

  resources :posts



  root "welcome#index"
end
