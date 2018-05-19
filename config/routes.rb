Rails.application.routes.draw do
  root to: 'yamanote_lines#index'
  resources :yamanote_lines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
