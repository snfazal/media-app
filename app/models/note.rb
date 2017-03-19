class Note < ApplicationRecord
  has_many :media, as: :linkable
end
