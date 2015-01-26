role :app, %w{deployer@58.96.185.60}
role :web, %w{deployer@58.96.185.60}
role :db,  %w{deployer@58.96.185.60}

server '58.96.185.60', user: 'deployer', roles: %w{web app db}, app_hosts: %w{127.0.0.1}, db_host: '127.0.0.1', unicorn_workers: 4

set :nginx_use_ssl, true # SSL 사용함
set :nginx_server_name, "web" # crt/key 파일 이름으로 사용됨
set :nginx_upload_certificate, true # crt/key 업로드: config/resources에 web.crt, web.key의 인증서 파일2개가 존재해야함

set :unicorn_workers, 4
