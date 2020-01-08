Rails.application.routes.draw do
  get 'breweries/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/breweries', to: "breweries#index"
end
