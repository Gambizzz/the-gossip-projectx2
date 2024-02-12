class Gossip < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  belongs_to :user, optional: true #false
  has_many :tags
end
