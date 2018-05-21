class Company < ApplicationRecord
  has_many :users
  has_many :responses
  has_many :requests
end
