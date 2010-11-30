module HelloMail
	class Railtie < Rails::Railtie
		rake_tasks do
			load File.join(File.dirname(__FILE__), '..', 'rails', 'railties', 'tasks.rake')
		end
	end
end
