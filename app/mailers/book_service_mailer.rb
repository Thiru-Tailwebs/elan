class BookServiceMailer < ApplicationMailer
    def send_mail(fname, lname, email, services, phone, message)
        email1 = "info@elandecor.in"
        subject = "Elan: New Booked Service"

        @fname = fname
        @lname = lname
        @email = email
        @services = services
        @phone = phone
        @message = message

        mail(to: email1, subject: subject)
    end
end
