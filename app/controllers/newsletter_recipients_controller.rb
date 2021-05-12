class NewsletterRecipientsController < ApplicationController
  def new
    @email = params[:email_address]
    
    # TODO validation etc.
  end
end
