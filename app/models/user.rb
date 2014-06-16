class User < ActiveRecord::Base
attr_accessor :password
def user_params
      params.require(:user).permit(:username,:password, :password_confirmation)
    end
before_save :encrypt_password
validates_confirmation_of :password
validates_presence_of :password,:on =>:create
validates_uniqueness_of :username
    
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
else 
nil
  end
end

