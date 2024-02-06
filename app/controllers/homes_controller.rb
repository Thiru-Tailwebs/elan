class HomesController < ApplicationController
  before_action :set_category, only: %i[
    index media
  ]

  def index
    @banner_image = HeaderImage.where(active: true).last
    @blogs_featured = Blog.where(is_featured: true).last(3)
    @blogs_latest = Blog.all_published_data.where.not(
      id: @blogs_featured.pluck(:id)
    ).order('published_dt DESC').first(3)
    @blogs_latest_mobile = Blog.all_published_data.order(
      'published_dt DESC'
    ).last(5)
  end

  def media
  end

  def contact_us
  end

  def Vendor_Registration
  end

  def faq
  end

  def design_service
    @categories = Category.where(active: true).order(:priority)
  end

  def blogs
  end

  def our_collections
  end

  def our_story
  end

  def brands
    @brand_categories = BrandCategory.where(
      active: true
    ).order(:priority)
  end

  def clientele
    @clientele_image = ClienteleImage.where(
      active: true
    ).order(:priority)
  end

  def our_services
  end

  def book_services

  end

  def blogs_detail
  end

  def nri_homes
  end

  def send_inquiry_mail
    name = params['name']
    email = params['email']
    mobile = params['number']

    Inquiry.create(
      name: params['name'],
      email: params['email'],
      mobile: params['number']
    )

    InquiryMailer.send_mail(
      name, email, mobile
    ).deliver_later

    SuccessMailer.send_mail(
      email, name
    ).deliver_later

    head :ok
  end

  def send_contact_mail
    fname = params['fname']
    lname = params['lname']
    email = params['email']
    mobile = params['mobile']
    message = params['message']

    Contact.create(
      first_name: params['fname'],
      last_name: params['lname'],
      email: params['email'],
      mobile: params['mobile'],
      message: params['message']
    )

    ContactMailer.send_mail(
      fname, lname, email, mobile, message
    ).deliver_later

    SuccessMailer.send_mail(
      email, fname
    ).deliver_later

    head :ok
  end

  def send_newsletter_mail
    email = params['email']
    name = params['email']

    Newsletter.create(email: email)

    NewsletterMailer.send_mail(
      email
    ).deliver_later

    NewsletterSuccessMailer.send_mail(
      email
    ).deliver_later

    head :ok
  end

  def send_book_service_mail
    fname = params['fname']
    lname = params['lname']
    email = params['email']
    services = params['services']
    phone = params['phone']
    message = params['message']

    BookService.create(
      first_name: fname,
      last_name: lname,
      email: email,
      service: services,
      phone: phone,
      message: message,
    )

    BookServiceMailer.send_mail(
      fname, lname, email, services, phone, message
    ).deliver_later

    SuccessMailer.send_mail(
      email, fname
    ).deliver_later

    head :ok
  end

  def send_design_service_mail
    name = params['name']
    phone = params['phone']
    email = params['email']
    area = params['area']
    city = params['city']

    DesignService.create(
      name: name,
      phone: phone,
      email: email,
      area: area,
      city: city,
    )

    DesignServiceMailer.send_mail(
      name, phone, email, area, city
    ).deliver_later

    SuccessMailer.send_mail(
      email, name
    ).deliver_later

    head :ok
  end

  def send_vendor_registration_mail
    puts "===> params: ", params
    fname = params['fname']
    lname = params['lname']
    email = params['email']
    phone = params['phone']
    address = params['address']
    country = params['country']
    image = params['image']

    VendorRegistration.create(
      first_name: fname,
      last_name: lname,
      email: email,
      phone: phone,
      address: address,
      country: country,
      image: image,
    )

    VendorRegistrationMailer.send_mail(
      fname, lname, email, phone, address, country
    ).deliver_later

    VendorRegistrationSuccessMailer.send_mail(
      email
    ).deliver_later

    head :ok
  end

  private
    def set_category
      @categories = Category.where(active: true).order(:priority)
    end
end
