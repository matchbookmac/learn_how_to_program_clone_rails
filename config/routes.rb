Rails.application.routes.draw do
  root to: "sections#index"
  resources :sections
  resources :lessons

  get 'table-of-contents' => 'lessons#index', :as => 'table_of_contents'
  get 'table_of_contents' => redirect('table-of-contents')
end
