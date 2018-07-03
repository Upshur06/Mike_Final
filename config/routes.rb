Rails.application.routes.draw do


  get 'test/index'
  get 'test/new'
  get 'test/show'
  get 'test/edit'
  devise_for :students, :controllers => {registrations: "students/registrations"}
  devise_for :teachers, :controllers => {registrations: "teachers/registrations"}


  get 'welcome/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
