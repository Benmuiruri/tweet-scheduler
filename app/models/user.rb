# email:string
# password_digest: string

# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
  has_many :twitter_accounts
  has_secure_password

  validates :email, presence: true
  validates :password , presence: true
end
