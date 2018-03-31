Rails.application.routes.draw do
  
  get '/stocks', to: 'stocks#index'
  get '/blogs', to: 'blogs#index'
  root to: 'blogs#index'
  
  resources :blogs do
    collection do
      post :confirm
    end
  end
  
  resources :contacts
  
end
