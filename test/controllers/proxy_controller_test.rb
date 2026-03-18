# typed: true
# frozen_string_literal: true

require "test_helper"

class ProxyControllerTest < ActionDispatch::IntegrationTest
  test "should get openai" do
    get proxy_openai_url(path: "models")
    assert_response :success
  end
end
