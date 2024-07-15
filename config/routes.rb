Rails.application.routes.draw do
  resources :bills
  resources :employees
  resources :departments
  get "up" => "rails/health#show", as: :rails_health_check
  root "employees#index"
end
