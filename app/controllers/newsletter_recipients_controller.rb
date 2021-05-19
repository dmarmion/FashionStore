class NewsletterRecipientsController < ApplicationController
  def new
    @email = params[:email_address]
    
    # email_regex = /^[a-z0-9]+@[a-z0-9]+\.[a-z]+$/i
    
    # if @email =~ email_regex
    # end
  end
end
