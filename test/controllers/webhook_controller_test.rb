require "test_helper"

class WebhookControllerTest < ActionDispatch::IntegrationTest
  test "should get receive" do
    get webhook_receive_url
    assert_response :success
  end
end
