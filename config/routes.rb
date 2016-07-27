Rails.application.routes.draw do

  get '/first_contact', to: 'contacts#first_contact'
  get '/contacts', to: 'contacts#index'
  get '/phones', to: 'contacts#phone_index'
  get '/contacts/:id', to: 'contacts#show'

end
