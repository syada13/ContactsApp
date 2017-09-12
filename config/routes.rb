Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'contacts#index'
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  
  resources :contacts 
end
