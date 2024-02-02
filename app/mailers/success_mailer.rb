class SuccessMailer < ApplicationMailer
    def send_mail(email, username)
        subject = "Hey " + username + ", We have received your call back request."

        mail(to: email, subject: subject)
    end
end
