module DbSeeder
	module Generators
		class MigrationGenerator < Rails::Generators::Base

			desc  "This generator creates seed migration file"
			source_root File.expand_path('../templates', __FILE__)
			argument :file_name, type: :string
			# class_option :doc, type: :boolean, default: true, desc: "Include documentation."

  			def migration
				if file_name.blank? 
					puts "file name required"
				else
					time_stamp = Time.now.strftime('%Y%m%d%H%M%S%L')
					destination = "db/seeder/#{time_stamp}_#{File.basename(file_name.underscore)}_seed.rb"
					existing_migrations = Dir['db/seeder/*.rb']
					migration_result = existing_migrations.select{ |f| f.include? file_name.underscore}
					if migration_result.count > 0
						destination = migration_result.first
					end
					if !File.exists?('db/seeder')
						empty_directory 'db/seeder'
					end
				    template 'migration_template.rb', destination
				end
			end

		end
	end
end