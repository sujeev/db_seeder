class DbSeeder::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/gem_tasks.rake'
  end
end