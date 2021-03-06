Rails.application.routes.draw do
  devise_for :users
  root :to => 'places#index'

  resources :places do
    resources :accommodations, :except => [:index]
  end
end
