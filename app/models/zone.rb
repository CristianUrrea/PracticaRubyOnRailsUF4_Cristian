class Zone < ApplicationRecord
  validates :temperatura,
            presence: true,
            length: { minimum: 0, maximum: 60 }
  validates :humitat,
            presence: true,
            length: { minimum: 0, maximum: 100 }
end
