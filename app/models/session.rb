class Session < ApplicationRecord
  has_many :candidates, dependent: :destroy

  validates :size, presence: true
  validates :price, presence: true

  def to_param
    "#{self.id}-#{self.name.parameterize}"
  end
end
