class ContactMailer < ApplicationMailer
    def send_mail(fname, lname, email, mobile, message)
        info_email = "info@elandecor.in"
        vedika_email = "vedika@tailwebs.com"
        subject = "Elan: New Contact"

        @fname = fname
        @lname = lname
        @email = email
        @mobile = mobile
        @message = message

        # puts("\n===> name: ", name)
        # puts("\n===> email: ", email)
        # puts("\n===> mobile: ", mobile)

        mail(to: [info_email, vedika_email], subject: subject)
    end
end
