# typed: true
# frozen_string_literal: true

class ProxyController < ApplicationController
  include ReverseProxy::Controller

  def openai
    reverse_proxy Env.openai_api_url, headers: openai_headers
  end

  private

  memoize def openai_headers
    { Authorization: "Bearer #{Env.openai_api_key}" }
  end
end
