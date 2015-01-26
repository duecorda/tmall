SSHKit.config.command_map[:rake] = "bundle exec rake"

# config valid only for current version of Capistrano
lock '3.3.5'

set :application, 'tmall'
set :repo_url, 'https://github.com/duecorda/tmall.git'

set :rbenv_ruby, '2.1.5'

set :deploy_to, '/opt/www'
set :user, 'deployer'

set :rails_env, 'production'
set :normalize_asset_timestamps, false
set :ssh_options, { forward_agent: true }

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute "#{release_path}/bin/init.unicorn.rb restart"
    end
  end
  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end

