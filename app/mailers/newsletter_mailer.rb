class NewsletterMailer < ApplicationMailer
    def send_mail(user_email)
        @user_email = user_email
    
        info_email = "info@elandecor.in"
        vedika_email = "vedika@tailwebs.com"
        subject = "Elan: Newsletter Email"

        mail(to: [info_email, vedika_email], subject: subject)
    end
end
