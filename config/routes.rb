Rails.application.routes.draw do

  get 'posts/index'
  get 'home/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#top"
  get "/login" => 'sessions#new'
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  get "/signup" => "users#new"
  post "/create" => "users#create" ,as: "users"
  get "/correct" => "home#correct"
  get "/mistake" => "home#mistake"
  get "posts/index" => "posts#index"
  post "posts/create" => "posts#create"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/error" =>"posts#error"
  post "posts/:id/correct" => "posts#correct"
  post "posts/:id/mistake" => "posts#mistake"
  post ":id/mistake" => "home#correct_reverse"
  post ":id/correct" => "home#mistake_reverse"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/edit_meaning" => "posts#edit_meaning"
  get "posts/quiz" => "posts#quiz"
  put "posts/quiz/c" => "posts#ans_correct"
  put "posts/quiz/m" => "posts#ans_mistake"
  get "/wordtest" => "home#wordtest"
end
