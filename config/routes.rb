Rails.application.routes.draw do
  root 'pages#index'
  
  # get 'pages/index'
  get 'pages/hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
