class User < ActiveRecord::Base
  #before_save { self.email = email.downcase }
  validates :login, presence: true, length: {maximum: 50}
  has_secure_password
  validates :password, length: {minimum: 6}
  belongs_to :employee

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
