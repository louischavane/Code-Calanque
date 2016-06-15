Rails.application.routes.draw do


  resources "sessions", only: [:show] do
    member do
      post 'candidate'
    end
  end

  root to: 'pages#home'
  get 'le-programme', to:'pages#program', as: 'program'

  resources "contacts", only: [:new, :create]

end
