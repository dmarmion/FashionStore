class NewsletterRecipient < ApplicationRecord
  # Email regex from Week 7 Tute
  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
end
