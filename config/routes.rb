Rails.application.routes.draw do
  root to: "pages#home"

	namespace :api, defaults: {format: :json} do 
	  resources :tutors, only: [:create, :update, :show, :index]
	  resources :students, only: [:create, :update, :show, :index]
	  devise_for :tutors
	  devise_for :students
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
