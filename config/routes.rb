Rails.application.routes.draw do
  resources :decks
  resources :cards

  get '/decks/:id/deal', to: 'decks#deal'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
