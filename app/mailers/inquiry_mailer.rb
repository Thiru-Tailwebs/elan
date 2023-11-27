class InquiryMailer < ApplicationMailer
    def send_mail(name, email, mobile)
        email = "info@elandecor.in"
        subject = "Elan: New Inquiry"

        @name = name
        @email = email
        @mobile = mobile

        # puts("\n===> name: ", name)
        # puts("\n===> email: ", email)
        # puts("\n===> mobile: ", mobile)

        mail(to: email, subject: subject)
    end
end
