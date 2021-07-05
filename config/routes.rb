Rails.application.routes.draw do
  get 'surveys/new'
  post 'surveys/create' => 'surveys#create'
  get 'surveys/result'
  root "surveys#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
