namespace :radiant do
  namespace :extensions do
    namespace :employment do
      
      desc "Runs the migration of the Employment extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          EmploymentExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          EmploymentExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Employment to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from EmploymentExtension"
        Dir[EmploymentExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(EmploymentExtension.root, '')
          directory = File.dirname(path)
          mkdir_p RAILS_ROOT + directory, :verbose => false
          cp file, RAILS_ROOT + path, :verbose => false
        end
      end  
    end
  end
end
