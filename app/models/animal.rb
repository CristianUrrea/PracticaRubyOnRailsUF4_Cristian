class Animal < ApplicationRecord
  belongs_to :zone
  belongs_to :user

  mount_uploader :avatar, AvatarUploader

  # User avatar validation

  validates_integrity_of :avatar

  validates_processing_of :avatar

  validates :avatar, file_size: { less_than: 1.megabytes }
end
