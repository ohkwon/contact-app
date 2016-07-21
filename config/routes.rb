Rails.application.routes.draw do

  get '/first_contact', to: 'contacts#first_contact'
  get '/contacts', to: 'contacts#contacts'

end
