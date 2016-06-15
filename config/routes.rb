Rails.application.routes.draw do


  resources "sessions", only: [:show]

  root to: 'pages#home'
  get 'le-programme', to:'pages#program', as: 'program'
  resources "candidates", only: [:new, :create]

  resources "contacts", only: [:new, :create]

end
