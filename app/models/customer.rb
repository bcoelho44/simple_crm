class Customer < ApplicationRecord
  has_one_attached :image  # Ensure you have Active Storage attachment

  # Define associations that Ransack can search
  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end

  # Optionally, specify ransackable attributes (columns)
  def self.ransackable_attributes(auth_object = nil)
    ["full_name", "phone_number", "email_address", "notes"]
  end
end
