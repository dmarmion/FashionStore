class NewsletterRecipientsController < ApplicationController
  def new
    @email = params[:email_address]
    @success = false
    
    subscriber = NewsletterRecipient.new(email: @email)
    
    if subscriber.save
      @success = true
    end
  end
end
