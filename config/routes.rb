InternMe::Application.routes.draw do
  

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  root to: 'pages#index'
end
