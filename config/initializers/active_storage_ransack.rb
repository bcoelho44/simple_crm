# config/initializers/active_storage_ransack.rb

# Re-open ActiveStorage::Attachment to define ransackable attributes for Ransack
ActiveSupport.on_load(:active_storage_attachment) do
  ActiveStorage::Attachment.class_eval do
    def self.ransackable_attributes(auth_object = nil)
      ["blob_id", "created_at", "id", "name", "record_id", "record_type"]
    end
  end
end