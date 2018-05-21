class Request < ApplicationRecord
  belongs_to :discipline
  enum priority: [:normal, :emergency]
  enum project_phase: [:preliminary, :detailing]
  has_one :response
  has_one :requester, class_name: 'Company', foreign_key: 'requester_company_id'
  has_one :requested, class_name: 'Company', foreign_key: 'requested_company_id'
end
