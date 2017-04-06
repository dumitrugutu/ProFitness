Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: "dashboards#index"

  resources :users do
    resources :workouts
  end

  post "dashboards/search" => "dashboards#search", as: "search_dashboards"
  
  # resources :dashboards, only: [:index] do
  #   collection do
  #     post :search, to: "dashboards#search"
  #   end
  # end

end
