Rails.application.routes.draw do
  resources :question_options
  resources :questions
  resources :events
  resources :employees
  resources :teams
  resources :companies
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
