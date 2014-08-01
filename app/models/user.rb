require 'bcrypt'

class User
  include MongoMapper::Document
  include ActiveModel::SecurePassword
  include BCrypt
  has_secure_password

  key :password_digest,       String
  key :email,                 String
  key :password_confirmation, String

end
