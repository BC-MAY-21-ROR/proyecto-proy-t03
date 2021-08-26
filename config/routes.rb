Rails.application.routes.draw do
  
  get '/:locale' => 'home#index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope "/:locale" do
    get 'faqs', to: "home#faqs"
    match 'type', to: 'home#type', via: [:get, :post]
    devise_for :psychologists, :controllers => { registrations: 'patient/registrations' }
    devise_for :patients, :controllers => { registrations: 'psychologist/registrations' } 
  end
end
