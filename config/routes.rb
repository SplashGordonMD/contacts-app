Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/contacts" => "contacts#index"
  get "/contacts/new" => "contacts#index"
  post "/contacts" => "contacts#create"
  get "/contacts/:id" => "contacts#show"
  get "/contacts/:id/edit" => "contacts#edit"
  patch "/contacts/:id" => "contacts#update"
  delete "/messages/:id" => "messages#destroy"
end
