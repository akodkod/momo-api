# typed: true
# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render plain: "Hello! What are you doing here? 😏"
  end
end
