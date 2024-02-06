class VendorRegistrationSuccessMailer < ApplicationMailer
    def send_mail(email)
        subject = "Welcome to Elan - House of Furnishing"

        mail(to: email, subject: subject)
    end
end
