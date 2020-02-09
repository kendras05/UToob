class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    enum role: [:admin, :standard]
    has_many :comments
end
