Rails.application.routes.draw do
  resources :artists
  resources :comics do
    resources :thumbnails, only: [:create, :destroy]
  end
end
