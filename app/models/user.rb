class User < ApplicationRecord
  has_secure_password(:password, validations: false)
  acts_as_paranoid
end
