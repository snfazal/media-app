class User < ApplicationRecord
  has_many :links, as: :linkable
end
