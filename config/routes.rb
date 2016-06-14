Rails.application.routes.draw do


  resources "sessions", only: [:show] do
    member do
      post 'candidate'
    end
  end

  root to: 'pages#home'
  get 'le-programme', to:'pages#program', as: 'program'
  get 'inscription', to:'pages#inscription', as: 'inscription'

  resources "contacts", only: [:new, :create]

end
