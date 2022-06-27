require "image_processing/mini_magick"

class ImageUploader < Shrine
  # plugins and uploading logic
  Attacher.validate do
    validate_max_size 1*1024*1024, message: "is too large (max is 1 MB)"
    validate_mime_type %w[image/gif]
  end

  Attacher.derivatives do |original|
    magick = ImageProcessing::MiniMagick.source(original)

    {
      small:  magick.resize_to_limit!(120, 120)
    }
  end
end
