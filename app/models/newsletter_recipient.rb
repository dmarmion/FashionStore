class NewsletterRecipient < ApplicationRecord
  # Email regex from Week 7 Tute
  validates :email, presence: true#,
  # I attempted to add email validation here, but couldn't get it working for
  # some reason
                    # format: {with: /A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
end
