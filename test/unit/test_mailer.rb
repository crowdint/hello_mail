require 'test_helper'

class MailerTest < Test::Unit::TestCase
	def setup
		ActionMailer::Base.delivery_method = :test
    ActionMailer::Base.perform_deliveries = true
    ActionMailer::Base.deliveries = []

    @expected = Mail::Message.new
	end

	def test_hello_mail
		result = HelloMailMailer.test_email("test@test.com")
		@expected.to = "test@test.com"
		@expected.subject = "This is a test email"
		@expected.body = "Hello Mail!"

		assert_equal(@expected.to, result.to)
		assert_equal(@expected.subject, result.subject)
		assert_match(/Hello Mail!/, result.body)
	end

	def test_delivery
		HelloMailMailer.test_email("test@test.com").deliver
		assert_equal 1, ActionMailer::Base.deliveries.size
	end
end
