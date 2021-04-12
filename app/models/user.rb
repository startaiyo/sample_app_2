class User < ApplicationRecord
    has_secure_password
    has_many :words, dependent: :destroy
end
