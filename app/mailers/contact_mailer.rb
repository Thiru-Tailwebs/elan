class ContactMailer < ApplicationMailer
    def send_mail(fname, lname, email, mobile, message)
        email = "info@elandecor.in"
        subject = "Elan: New Contact"

        @fname = fname
        @lname = lname
        @email = email
        @mobile = mobile
        @message = message

        # puts("\n===> name: ", name)
        # puts("\n===> email: ", email)
        # puts("\n===> mobile: ", mobile)

        mail(to: email, subject: subject)
    end
end
