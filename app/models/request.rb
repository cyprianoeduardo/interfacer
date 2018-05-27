class Request < ApplicationRecord
  belongs_to :discipline
  belongs_to :requester, class_name: 'Company', foreign_key: 'requester_id'
  belongs_to :requested, class_name: 'Company', foreign_key: 'requested_id'
  enum priority: [:normal, :emergency]
  enum project_phase: [:preliminary, :detailing]
  has_one :response
end
