Rails.application.routes.draw do
  root to: "sections#index"
  resources :sections
  resources :lessons, except: [:index]
  resources :lessons, as: :lessons, path: '/table_of_contents', only: :index

  # match "/table_of_contents" => "lessons#index", via: :get
end
