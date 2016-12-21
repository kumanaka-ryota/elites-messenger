Rails.application.routes.draw do

  root 'timelines#index'
  devise_for :users
  resources :timelines

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end  
end
