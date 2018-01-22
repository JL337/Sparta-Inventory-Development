class Item < ApplicationRecord

  validates :description, presence: true
	
  has_many :logs, dependent: :destroy
  has_one :current, -> { where return_date: nil }, class_name: "Log"
  belongs_to :academy
  belongs_to :supplier
end
