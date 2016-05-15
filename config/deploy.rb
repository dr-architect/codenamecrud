set :application, 'codenamecrud'
set :deploy_user, 'deploy'

# настраиваем детали репозитория
set :scm, :git
set :repo_url, 'git@github.com:codenamecrud/codenamecrud.git'

# настраиваем менеджер версий ruby
set :rbenv_type, :system
set :rbenv_ruby, '2.2.4'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

# сколько старых релизов мы хотим сохранить, не указывайте слишком много
set :keep_releases, 5

# файлы, которые мы хотим связывать символическими ссылками с соответствующими
# файлами в shared
set :linked_files, %w{config/database.yml config/secrets.yml}

# директории для связывания символическими ссылками в shared

set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# это: # http://www.capistranorb.com/documentation/getting-started/flow/
# стоит прочитать, чтобы получить представление о вызываемых задачах
# и порядке их вызова при запуске `cap stage deploy`

namespace :deploy do
end
