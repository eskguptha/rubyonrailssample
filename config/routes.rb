Rails.application.routes.draw do
  root 'computers#view_all'
  resources :computers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
