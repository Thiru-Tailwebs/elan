class SuccessMailer < ApplicationMailer
    def send_mail(email)
        email = email
        subject = "Hey {name}, We have received your call back request."

        mail(to: email, subject: subject)
    end
end
