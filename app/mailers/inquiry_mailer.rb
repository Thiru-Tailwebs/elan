class InquiryMailer < ApplicationMailer
    def send_mail(name, email, mobile)
        info_email = "info@elandecor.in"
        vedika_email = "vedika@tailwebs.com"
        subject = "Elan: New Inquiry"

        @name = name
        @email = email
        @mobile = mobile

        # puts("\n===> name: ", name)
        # puts("\n===> email: ", email)
        # puts("\n===> mobile: ", mobile)

        mail(to: [info_email, vedika_email], subject: subject)
    end
end
