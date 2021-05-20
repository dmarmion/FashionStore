class NewsletterRecipientsController < ApplicationController
  def new
    @email = params[:email_address]
    @success = false
    
    subscriber = NewsletterRecipient.new(email: @email)
    
    if subscriber.save
      @success = true
      
      NewsletterRecipientMailer.signup_email(subscriber).deliver_later
    end
  end
end
