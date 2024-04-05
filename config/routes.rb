Rails.application.routes.default_url_options[:host] = "127.0.0.1:3000"

Rails.application.routes.draw do
  get "/" => "links#new", as: :new
  get "/s/:slug" => "links#show", as: :short
  
  post "/create" => "links#create", as: :create
end
