Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'games#new'
  #  resources :games, only: %i[new create]
   resources :games, only: %i[new create update] do
    member do
      get :give_up
      get :challenge
      get :correct
    end
    resource :progresses, only: %i[new create]
  end
  
end
