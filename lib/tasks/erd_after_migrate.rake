namespace :db do
  task :erd do
    at_exit { system 'bundle exec erd' }
  end
end

Rake::Task['db:migrate'].enhance(['db:erd'])