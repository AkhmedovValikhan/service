class User < ActiveRecord::Base
  #before_save { self.email = email.downcase }
  validates :login, presence: true, length: {maximum: 50}
  has_secure_password
  validates :password, length: {minimum: 6}


end