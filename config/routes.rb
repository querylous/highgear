Rails.application.routes.draw do
  get 'sessions/new'

  root   'sales_hours#index'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  post   'foods/sort' => 'foods#sort'
  post   'foods/upload' => 'foods#upload'
  post   'waste_counts/new' => 'waste_counts#new'
  get    'foods/today_counts' => 'foods#today'
  get    'foods/search' => 'foods#search'
  get    'foods/my_today' => 'foods#my_today'
  post   'sales_hours/upload' => 'sales_hours#upload'
  resources :users
  resources :foods
  resources :waste_counts
  resources :surveys
  get    'current_manager' => 'application#current_manager'
  resources :sales_hours
end
