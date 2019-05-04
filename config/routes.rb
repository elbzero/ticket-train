Rails.application.routes.draw do
  resources :customers
  resources :tickets do
    collection do
      get :open
    end
  end

  resources :ticket_notes

  get 'examples/get' => 'pages#get'
  post 'examples/post' => 'pages#post'
  put 'examples/put' => 'pages#put'
  delete 'examples/delete' => 'pages#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
