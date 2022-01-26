Rails.application.routes.draw do
  resources :movies, only: %i[index show] do
    resource :rating, only: :update
  end
end
