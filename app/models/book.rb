class Book < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true

  geocoded_by :address

  has_one_attached :cover

  after_validation :geocode, if: :will_save_change_to_address?
end
