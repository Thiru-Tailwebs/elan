class SuccessMailer < ApplicationMailer
    def send_mail(email, username, subject)
        if subject.present?
            subject = subject
            puts "===> ", subject
        else
            subject = "Hey " + username + ", We have received your call back request."
        end

        mail(to: email, subject: subject)
    end
end
