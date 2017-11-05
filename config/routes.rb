Rails.application.routes.draw do
  get 'messages' => 'messages#new'
  resources :messages
  root 'messages#new'
  post 'notes/api' => 'messages#api'
end
