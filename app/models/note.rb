class Note < ApplicationRecord
  has_many :links, as: :linkable
end
