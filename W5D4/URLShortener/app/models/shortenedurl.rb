class ShortenedUrl < ApplicationRecord
  validates :short_url, presence: true, uniqueness: true
  validates :long_url, presence: true, uniqueness: true

  def self.random_code
    short_url = ""
    new_url = false

    while !new_url 
      new_url = true
      short_url = SecureRandom.urlsafe_base64
      new_url = false if ShortenedUrl.exists?(short_url)
    end
    short_url
  end
  
end