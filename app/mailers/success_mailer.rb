class SuccessMailer < ApplicationMailer
    def send_mail(email)
        email = email
        subject = "Elan: Your Request Update"

        mail(to: email, subject: subject)
    end
end
