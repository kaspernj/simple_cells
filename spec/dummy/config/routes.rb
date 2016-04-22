Rails.application.routes.draw do
  mount SimpleCells::Engine => "/simple_cells"

  resources :users, only: :show

  root to: "users#index"
end
