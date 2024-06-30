Rails.application.routes.draw do
  resources :books
  delete 'books/:id' =>'books#destroy', as: 'destroy_book'
  root 'homes#top'
  patch 'books/:id' => 'books#update', as: 'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
