class NewsletterMailer < ApplicationMailer
    def send_mail(user_email)
        @user_email = user_email

        email = "info@elandecor.in"
        subject = "Elan: Newsletter Email"

        mail(to: email, subject: subject)
    end
end
