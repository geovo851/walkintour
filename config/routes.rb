Rails.application.routes.draw do
  resources :photos
  resources :property_types
  resources :orders
  get 'admin' => 'admin#index', as: 'admin'

  get 'choice_property_type' => 'orders#choice_property_type', as: 'choice_property_type'
  get 'about_property' => 'orders#about_property', as: 'about_property'
  get 'exterior' => 'orders#exterior', as: 'exterior'
  get 'still_photo' => 'orders#still_photo', as: 'still_photo'
  get 'floor_plan' => 'orders#floor_plan', as: 'floor_plan'
  get 'custome_domain' => 'orders#custome_domain', as: 'custome_domain'
  get 'review' => 'orders#review', as: 'review'
  root 'orders#choice_property_type'
end
