Rails.application.routes.draw do
  root to: "sections#index"
  resources :lessons
  resources :sections
end
