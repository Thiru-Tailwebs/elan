class ImageUploader < Shrine
    Attacher.derivatives do |original|
        magick = ImageProcessing::MiniMagick.source(original)
    
        # generate the thumbnails you want here
        {
            small:  magick.resize_to_limit!(300, 300),
            medium: magick.resize_to_limit!(600, 600),
            large:  magick.resize_to_limit!(800, 800)
        }
    end

    # Attacher.validate do
    #     # MAX 5 mb image we will get.
    #     validate_max_size 5*1024*1024 # 5mb
    #     validate_mime_type %w[image/jpeg image/png image/webp image/tiff]
    #     validate_extension_inclusion %w[jpg jpeg png webp tiff tif]
    # end

end