class User < ApplicationRecord
  has_many :medias

  has_many :notes, through: :media
  has_secure_password
end
