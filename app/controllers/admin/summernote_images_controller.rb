class Admin::SummernoteImagesController < Admin::AdminbaseController
    def upload_image
        image = params[:image]
        s_image = SummernoteImage.create!(image_params)

        render json: {
            url: url_for(s_image.image_url)
        }
    end

    private

    def image_params
        params.permit(:image)
    end
end
