Rails.application.routes.draw do
  resources :breakfasts
  resources :lunches
  resources :restorents
  devise_for :users
  root to: "restorents#index"
  get '/search' => 'restorents#search', :as => 'search_page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
