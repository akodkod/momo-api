# typed: true
# frozen_string_literal: true

Rails.application.routes.draw do
  # OpenAI proxy route
  match "proxy/openai/*path", to: "proxy#openai", via: :all, as: :proxy_openai

  # Health routes
  get "up", to: "health#index", as: :rails_health_check
  get "health/trigger-sentry-error", to: "health#trigger_sentry_error", as: :trigger_sentry_error
  get "health/trigger-sentry-message", to: "health#trigger_sentry_message", as: :trigger_sentry_message

  root "home#index"
end
