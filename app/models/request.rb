class Request < ApplicationRecord
  belongs_to :discipline
  belongs_to :requester
  belongs_to :requested
end
