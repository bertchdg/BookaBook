class Booking < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates :borrow_from, :return_on, presence: true
  validates :return_on, comparison: { greater_than: :borrow_from }
end
