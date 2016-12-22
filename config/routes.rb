Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	root to: 'home#index' 
	
	devise_for :users, path: '', path_names: { sign_in: 'ingresar', sign_out: 'salir', sign_up: 'registrarse', edit: 'editar-cuenta'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end