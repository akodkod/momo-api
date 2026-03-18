# typed: true
# frozen_string_literal: true

Rails.application.routes.draw do
  # OpenAI proxy route
  match "proxy/openai/*path", to: "proxy#openai", via: :all, as: :proxy_openai

  # Health check route
  get "up", to: "health#index", as: :rails_health_check

  root "home#index"
end
