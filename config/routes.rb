Rails.application.routes.draw do


  devise_for :students, :controllers => {registrations: "students/registrations"}
  devise_for :teachers, :controllers => {registrations: "teachers/registrations"}
  resources :tests
  resources :scores

  get "test/finish" => "tests#finish", as: "finish"
  post "/guess" => "scores#guess", as: "guess"
  get 'welcome/index'
  get 'about/show'
  get 'about/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
