Rails.application.routes.draw do
  resources :customers
  resources :tickets do
    collection do
      get :open
    end
  end

  root to: 'tickets#index'
  resources :ticket_notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
