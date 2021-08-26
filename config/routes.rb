Rails.application.routes.draw do
  
  get '/:locale' => 'home#index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope "/:locale" do
    get 'faqs', to: "home#faqs"
    match 'type', to: 'home#type', via: [:get, :post]
    devise_for :psychologists
    devise_for :patients
  end
end
