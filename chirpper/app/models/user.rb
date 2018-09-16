class User < ApplicationRecord
  has_many :posts

  has_secure_password
  has_secure_token :api_token
end
