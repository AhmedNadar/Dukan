Rails.application.routes.draw do
  resource :cart, only: [:show] do
    put 'add/:movie_id',    to: 'carts#add',    as: :add_to
    put 'remove/:movie_id', to: 'carts#remove', as: :remove_from
  end

  devise_for :users, path_names: {sign_in: 'login', sign_up: 'register', sign_out: 'logout'}
  resources :movies, only: [:index, :show]
  root 'movies#index'
end
