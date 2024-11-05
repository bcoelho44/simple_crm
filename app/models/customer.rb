class Customer < ApplicationRecord
  has_one_attached :image  # Ensure you have Active Storage attachment

  # Require full name for each customer
  validates :full_name, presence: true

  # Define associations that Ransack can search
  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end

  # Specify ransackable attributes (columns)
  def self.ransackable_attributes(auth_object = nil)
    ["full_name", "phone_number", "email_address", "notes"]
  end
end
