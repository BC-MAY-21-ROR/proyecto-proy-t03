Rails.application.routes.draw do
  
  get '/:locale' => 'home#index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope "/:locale" do
    get 'psychologist/appointment', to: "psychologist#appointment"
    get 'faqs', to: "home#faqs"
    get 'prices', to: "home#prices"
    match 'type', to: 'home#type', via: [:get, :post]
    devise_for :psychologists, :controllers => { registrations: 'patient/registrations' }
    devise_for :patients, :controllers => { registrations: 'psychologist/registrations' } 
    get 'profile_psychologist', to: "home#profile_psychologist"
    get 'psychologists_list', to: "home#psychologist_list"
    post 'psychologists_list', to: "home#psychologist_list"
    get 'profile_patient', to: "home#profile_patient"
    resources :appointments
  end
end
