namespace :hello_mail do

	desc "Send a test email"
	task :deliver, :to, :needs => :environment do |t, to|
		HelloMailMailer.test_email(to).deliver
	end

end
