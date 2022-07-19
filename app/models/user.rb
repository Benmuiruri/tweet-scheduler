# email:string
# password_digest: string

# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
  has_many :twitter_accounts, foreign_key: :user_id, dependent: :destroy
  has_many :tweets
  
  has_secure_password

  validates :email, presence: true
  validates :password , presence: true
end
