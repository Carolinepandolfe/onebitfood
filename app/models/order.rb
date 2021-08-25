class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_products

  validates :name, :phone_number, :total_value, :city, :neighborhood, :street, :number, presence: true

  enum status: { waiting: 0, delivered: 1}

  before_validation :set_price

  accepts_nested_attributes_for :order_products, allow_destroy: true
end