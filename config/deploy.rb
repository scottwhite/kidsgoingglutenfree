set :application, "kidsgoingglutenfree"
set :repository, "git@github.com:scottwhite/kidsgoingglutenfree.git"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :scm, "git"
set :branch, "master"

role :web, "3rdarm.com"                          # Your HTTP server, Apache/etc
role :app, "3rdarm.com"                          # This may be the same as your `Web` server

set :deploy_via, :copy
set :copy_strategy, :export
set :copy_exclude, ["config/deploy.rb","lib/tasks/rspec.rake", "doc", "spec"]

# default_run_options[:pty] = true
# ssh_options[:forward_agent] = true

set :deploy_to,"/var/www/#{application}"
# set :user, 'scott'
# set :use_sudo, false

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end