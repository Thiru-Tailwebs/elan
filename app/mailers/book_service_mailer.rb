class BookServiceMailer < ApplicationMailer
    def send_mail(fname, lname, email, services, phone, message)
        info_email = "info@elandecor.in"
        vedika_email = "vedika@tailwebs.com"
        subject = "Elan: New Booked Service"

        @fname = fname
        @lname = lname
        @email = email
        @services = services
        @phone = phone
        @message = message

        mail(to: [info_email, vedika_email], subject: subject)
    end
end
