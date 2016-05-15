# Загружаем DSL и настраиваем стейджи
require 'capistrano/setup'

# подключаем стандартные задачи для деплоя
require 'capistrano/deploy'

# подключаем задачи из других гемов, содержащихся в Gemfile
#
# Документацию по приведенным гемам можно найти здесь:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#
# require 'capistrano/rvm'
require 'capistrano/rbenv'
# require 'capistrano/chruby'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/cookbook'

# Загружаем кастомные задачи из `lib/capistrano/tasks', если они определены
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
