class NewsletterSuccessMailer < ApplicationMailer
    def send_mail(email)
        subject = "Subscribe Newsletter Email"

        mail(to: email, subject: subject)
    end
end
