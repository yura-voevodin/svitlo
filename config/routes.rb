Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"

  # Pages
  get "/contacts", to: "pages#contacts"

  resources :lines, only: [:show], param: :id do
    member do
      get :next
    end
  end
end
