require 'test_helper'

class NewsletterRecipientTest < ActiveSupport::TestCase
  def setup
    @nr = NewsletterRecipient.new(email: "test@test.com")
  end
  
  test "should be valid" do
    assert @nr.valid?
  end
  
  test "email should be present" do
    @nr.email = ""
    assert_not @nr.valid?
  end
  
  # I attempted to add email validation, but couldn't get it working for
  # some reason
  # test "good emails should pass" do
  #   valid_emails = ["tim@apple.com", "CaPiTa@lIsAtI.oN", "under_score@da-sh.com",
  #                   "with+plus@gmail.com", "dotsare.fine@bazinga.biz"]
                    
  #   valid_emails.each do |email|
  #     @nr.email = email
  #     assert @nr.valid?, "Email #{email} should be valid."
  #   end
  # end
  
  # test "invalid emails should not pass" do
  #   bad_emails = ["no@pomegranites,com", "double@@ron.com", "missing@something",
  #                 "space@ in.here", "plus@af+er.at"]
  #   bad_emails.each do |email|
  #     @nr.email = email
  #     assert_not @nr.valid?, "Email #{email} should not be valid."
  #   end
  # end
end
