require 'test_helper'

class NewsletterRecipientsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get newsletter_recipients_new_url
    assert_response :success
  end

end
