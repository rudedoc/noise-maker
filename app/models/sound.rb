class Sound < ApplicationRecord
  has_one_attached :audio

  validates :name, presence: true
  validates :audio, presence: true
  validates :position, presence: true
  validates :position, numericality: { only_integer: true, greater_than: 0 }
  validates :position, numericality: { less_than_or_equal_to: 100 }
  validates_uniqueness_of :name, :position

end
