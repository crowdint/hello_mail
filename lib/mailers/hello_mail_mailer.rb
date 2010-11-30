class HelloMailMailer < ActionMailer::Base
	default :from => 'test@test.com'

	def test_email(to)
		mail(:to => to, :subject => "This is a test email", :body => "Hello Mail!")
	end
end
