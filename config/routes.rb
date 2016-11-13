Rails.application.routes.draw do
  resources :concerts do
  # /concerts
    resources :comments
  # Nested resource which means:  /concerts/:concerts_id/comments
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
