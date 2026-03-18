# typed: true
# frozen_string_literal: true

class HealthController < ApplicationController
  def index
    render plain: "We're good! Don't worry 😉", status: :ok
  end
end
