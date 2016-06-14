class Session < ApplicationRecord
  def to_param
    "#{self.id}-#{self.name.parameterize}"
  end
end
