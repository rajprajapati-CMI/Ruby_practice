Rails.application.routes.draw do
  # Uncomment the following lines if you want to use the default routes
  # get 'home/index'
  # get '/home' => 'home#index'

  root 'home#index'
  
  resources :employees do
    collection do
      get :export_csv
    end
  end
  
  resources :documents
  
  # Define routes for custom pages
  get '/about-us' => 'pages#about_us'
  get '/contact-us' => 'pages#contact_us'
  get '/privacy-policy' => 'pages#privacy_policy'
  get '/terms-and-conditions' => 'pages#terms_and_conditions'
end
