class InquiryMailer < ApplicationMailer
    def send_mail(name, email, mobile)
        email = "kartik@tailwebs.com"
        subject = "Elan: new inquiry"

        @name = name
        @email = email
        @mobile = mobile

        # puts("\n===> name: ", name)
        # puts("\n===> email: ", email)
        # puts("\n===> mobile: ", mobile)

        mail(to: email, subject: subject)
    end
end
