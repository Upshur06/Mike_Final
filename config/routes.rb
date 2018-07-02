Rails.application.routes.draw do
  devise_for :students, :controllers => {registrations: "students/registrations"}
  devise_for :teachers, :controllers => {registrations: "teachers/registrations"}


  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
