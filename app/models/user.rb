class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },
   format:     { with: VALID_EMAIL_REGEX },
   uniqueness: { case_sensitive: false } #case_sensitiveは大文字小文字を区別せずに一意性を検証してくれる
   has_secure_password
   validates :password, presence: true, length: { minimum: 6 }
   has_many :diaries, dependent: :destroy
end
