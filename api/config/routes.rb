Rails.application.routes.draw do
  post '/contact', to: 'contact#create'
  # get '/thank_you', to: 'contact#thank_you', as: 'thank_you'
end
