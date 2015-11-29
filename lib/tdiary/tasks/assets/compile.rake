namespace :assets do
  desc "compile coffeescript"
  task :compile do
    FileList['js/**/*.coffee'].each do |coffee|
      File.open(coffee.sub(/\.coffee\z/, '.js'), 'w') do |js|
        js.write CoffeeScript.compile(File.read(coffee))
      end
    end
  end
end
