Rails.application.routes.draw do
  resources :tickets do
    collection do
      get :open
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
