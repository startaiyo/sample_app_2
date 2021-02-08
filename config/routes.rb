Rails.application.routes.draw do
  get 'posts/index'
  get 'home/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#top"
  get "/correct" => "home#correct"
  get "/mistake" => "home#mistake"
  get "posts/index" => "posts#index"
  post "posts/create" => "posts#create"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/error" =>"posts#error"
end
