class User < ApplicationRecord
  belongs_to :company
  enum kind: [:admin, :default]
  enum status: [:active, :inactive]
end
