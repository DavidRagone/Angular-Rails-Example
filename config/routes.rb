AngularRailsExample::Application.routes.draw do
  root to: 'home#index'
  resource :profile, only: [:edit, :update]
  resource :book, only: [:show, :update]
end
