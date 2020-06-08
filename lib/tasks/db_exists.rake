namespace :db do
  desc "Checks to see if the database exists"
  task exists: :environment do
    begin
      ActiveRecord::Base.connection
    rescue
      exit 1
    else
      exit 0
    end
  end
end
