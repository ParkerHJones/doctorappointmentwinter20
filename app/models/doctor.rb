class Doctor < ApplicationRecord
    has_many :appts
    has_many :users, through: :appts
end
