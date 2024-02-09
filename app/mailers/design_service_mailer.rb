class DesignServiceMailer < ApplicationMailer
    def send_mail(name, phone, email, area, city)
        info_email = "info@elandecor.in"
        vedika_email = "vedika@tailwebs.com"
        subject = "Elan: New Design Service"

        @name = name
        @phone = phone
        @email = email
        @area = area
        @city = city

        mail(to: [info_email, vedika_email], subject: subject)
    end
end
