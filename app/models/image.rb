class Image < ApplicationRecord
  include ImageUploader::Attachment(:file)

  has_and_belongs_to_many :tags
end
