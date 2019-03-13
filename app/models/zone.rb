class Zone < ApplicationRecord
  has_many :animals, dependent: :destroy;
  validates :temperatura,
            presence: true,
            numericality: { greater_than_or_equal_to: -20, less_than_or_equal_to: 60 }
  validates :humitat,
            presence: true,
            numericality: { greater_than_or_equal_to: 10, less_than_or_equal_to: 100 }
end
