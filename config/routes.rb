Rails.application.routes.draw do
  resources :artists
  resources :comics do
    resources :thumbnails, only: [:create, :destroy]
  end

  resources :maps do
    resources :bubbles
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'static_pages#test'
end
