Rails.application.routes.draw do
  get '/:locale' => 'home#index'
  root 'home#index'
  scope "/:locale" do
    get 'faqs', to: "home#faqs"
  devise_for :users
  end
end
