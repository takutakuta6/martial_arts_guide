EMAIL = 'test@example.com'
PASSWORD = 'password'
ADMIN_EMAIL = 'admin@example.com'
ADMIN_PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データを作成しました。'
end

# 管理者作成
AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |user|
  user.password = ADMIN_PASSWORD
  puts '管理者ユーザーの初期データを作成しました。'
end