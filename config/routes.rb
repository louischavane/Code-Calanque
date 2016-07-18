Rails.application.routes.draw do


  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources "sessions", only: [:show]

  root to: 'pages#home'
  get 'le-programme', to:'pages#program', as: 'program'
  get 'candidature', to: 'candidates#new', as: 'new_candidate'
  get 'code-vs-calanques', to: 'pages#code_vs_calanques'

  resources "candidates", only: [:create]

  resources "contacts", only: [:new, :create]

end
