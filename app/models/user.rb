class User < ApplicationRecord
    has_one :profile
    has_many :comments


    has_secure_password
end
