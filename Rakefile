desc "start redis server"
task :redis do
  sh "redis-server"
end

desc "Run config.ru that uses redis to store some data and show it"
task :default do
  sh "rackup"
end

desc "Run a second app that reads the dat written by the forst one"
task :second do
  sh "rackup config_second.ru"
end
