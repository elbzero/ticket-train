Rails.application.routes.draw do
  resources :customers
  resources :tickets do
    resources :work_logs, only: [:new]
    collection do
      get :open
    end
  end
  resources :work_logs, only: [:edit, :create, :update, :destroy]


  root to: 'tickets#index'
  resources :ticket_notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
