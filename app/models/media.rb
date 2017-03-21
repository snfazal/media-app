class Media < ApplicationRecord
  belongs_to :user
  has_one :note
end
