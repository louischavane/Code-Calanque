class Session < ApplicationRecord
  has_many :candidates
  def to_param
    "#{self.id}-#{self.name.parameterize}"
  end
end
