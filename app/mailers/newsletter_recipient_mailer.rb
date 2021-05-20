class NewsletterRecipientMailer < ApplicationMailer
  def signup_email(subscriber)
    @subscriber = subscriber
    
    mail(to: @subscriber.email, subject: "You're signed up to our newsletter")
  end
end
