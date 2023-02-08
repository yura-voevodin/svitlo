Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"

  # Pages
  get "/contacts", to: "pages#contacts"
  get "/privacy-policy", to: "pages#privacy_policy"
  get "/terms-of-service", to: "pages#terms_of_service"

  resources :lines, only: [:show], param: :id do
    member do
      get :next
    end
  end
end
