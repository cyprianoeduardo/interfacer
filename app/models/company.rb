class Company < ApplicationRecord
  has_many :users
  has_many :responses
  #has_many :requests
  has_many :requesters_requests, foreign_key: :requester_id, class_name: 'Request'
  has_many :requesteds_requests, foreign_key: :requested_id, class_name: 'Request'
end
