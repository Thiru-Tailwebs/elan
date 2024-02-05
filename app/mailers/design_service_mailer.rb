class DesignServiceMailer < ApplicationMailer
    def send_mail(name, phone, email, area, city)
        email1 = "info@elandecor.in"
        subject = "Elan: New Design Service"

        @name = name
        @phone = phone
        @email = email
        @area = area
        @city = city

        mail(to: email1, subject: subject)
    end
end
