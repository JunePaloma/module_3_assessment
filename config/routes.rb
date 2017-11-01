Rails.application.routes.draw do
  root 'welcome#index'
  get "/search", to: "search#index"

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :api do
    namespace :v1 do
      namespace :items do
        get "/items", to: "all_items#show"
      end
    end
  end
end
