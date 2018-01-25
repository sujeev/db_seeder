module DbSeeder
	module Generators
		class InstallGenerator < Rails::Generators::Base

			desc "This generator creates db/seeder directory"
			def install
				empty_directory 'db/seeder'
			end

			# hook_for :test_framework
		end
	end
end