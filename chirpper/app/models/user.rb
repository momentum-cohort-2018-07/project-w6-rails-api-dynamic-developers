class User < ApplicationRecord
  has_secure_token :api_token

  acts_as_followable
  acts_as_follower
end
