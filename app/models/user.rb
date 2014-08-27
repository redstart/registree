class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :login, :name, :second_name, :surename, :password, :password_confirmation

  #validations
  validates :surename, presence: true
  validates :name, presence: true
  validates :second_name, presence: true
  validates :birthday, presence: true
  validates :login, presence: true, length: { in: 5..32 }
  validates :email, presence: true
  has_secure_password
end
