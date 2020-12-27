class User < ApplicationRecord
    has_many :appts
    has_many :doctors, through: :appts
end
