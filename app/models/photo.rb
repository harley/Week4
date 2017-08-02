class Photo < ApplicationRecord
  validates :username, :url, presence: true
  has_many :comments, dependent: :destroy
end
