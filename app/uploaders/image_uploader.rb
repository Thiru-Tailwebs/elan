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

end