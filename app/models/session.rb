class Session < ApplicationRecord
  has_many :candidates, dependent: :destroy
  def to_param
    "#{self.id}-#{self.name.parameterize}"
  end
end
