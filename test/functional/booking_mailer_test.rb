require 'test_helper'

class BookingMailerTest < ActionMailer::TestCase
  test "guest_books" do
    mail = BookingMailer.guest_books
    assert_equal "Guest books", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
