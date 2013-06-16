class BookingMailer < ActionMailer::Base
  default from: "booking@perseveranceboat.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.guest_books.subject
  #
  def guest_books(booking, guest)
    @guest = guest
    @booking = booking

    mail to: "john@johnconwayiv.com", subject: "New Booking"
  end
end
