source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false

# ログイン機能
gem "devise"
# 日本語化
# 多言語
gem 'rails-i18n', '~> 6.0'
# ログイン画面
gem 'devise-i18n'
# gem 'devise-bootstrap-views', '~> 1.0'

# 管理者画面
gem 'activeadmin'
gem "active_admin_import"

# 画像投稿機能
gem 'carrierwave', '~> 2.1'
gem 'fog-aws'
gem 'mini_magick'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "pry-byebug"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end