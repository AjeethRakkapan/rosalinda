Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'medium#index'
  resources :medium, only: [:index, :show] do 
    member do 
      post 'buy'
      delete 'delete'
    end
    collection do 
      get 'movies'
      get 'tv_shows'
    end
  end

  resources :user, only: [] do 
    collection do 
      get 'media'
    end
  end
end
