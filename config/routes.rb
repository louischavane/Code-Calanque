Rails.application.routes.draw do


  resources "sessions", only: [:show] do
      resources "candidates", only: [:new, :create]
  end

  root to: 'pages#home'
  get 'le-programme', to:'pages#program', as: 'program'
  get 'inscription', to:'pages#inscription', as: 'inscription'

  resources "contacts", only: [:new, :create]

end
