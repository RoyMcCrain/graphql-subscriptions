namespace :db do
  desc 'すべてのTableをTruncateする'
  task truncate_all: :environment do
    ActiveRecord::Base.connection.tables.each do |table|
      next if table == 'schema_migrations'

      case ActiveRecord::Base.connection.adapter_name.downcase.to_sym
      when :mysql2 || :postgresql
        ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
      when :sqlite
        ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
      end
    end
  end
end
