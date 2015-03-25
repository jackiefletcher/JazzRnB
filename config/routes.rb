Rails.application.routes.draw do
  root :to => 'places#index'

  resources :places do
    resources :accommodations, :except => [:show, :index]
  end

end
