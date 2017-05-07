Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/fortune", to: 'pages#fortune_method'
  get "/lotto", to: 'pages#lotto_method'
  get "/counter", to: 'pages#counter_method'
  get "/beer", to: 'pages#beer_method'
end
