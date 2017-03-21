class User < ApplicationRecord
  has_many :medias, as: :linkable

  has_many :notes, dependent: :destroy
  has_secure_password
end
