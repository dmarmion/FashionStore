class NewsletterRecipient < ApplicationRecord
  # Email regex from Week 7 Tute
  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  # I attempted to add email validation here, but couldn't get it working for
  # some reason
end
