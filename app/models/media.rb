class Media < ApplicationRecord
  belongs_to :linkable, polymorphic: true
end
