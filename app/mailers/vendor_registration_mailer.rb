class VendorRegistrationMailer < ApplicationMailer
    def send_mail(fname, lname, email, phone, address, country)
        email1 = "info@elandecor.in"
        subject = "Elan: New Vendor Registration"

        @fname = fname
        @lname = lname
        @email = email
        @phone = phone
        @address = address
        @country = country

        mail(to: email1, subject: subject)
    end
end
