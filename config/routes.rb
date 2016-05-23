Rails.application.routes.draw do
  root to: 'pages#home'
  get 'le-programme', to:'pages#program', as: 'program'
  get 'inscription', to:'pages#inscription', as: 'inscription'

end
