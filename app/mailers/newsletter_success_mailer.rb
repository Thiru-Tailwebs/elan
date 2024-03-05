class NewsletterSuccessMailer < ApplicationMailer
    def send_mail(email)
        subject = "Newsletter signup successful!"

        mail(to: email, subject: subject)
    end
end
