Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true
 # config.action_mailer.delivery_method= :test
 # host= ':localhost:3000'
 # config.action_mailer.default_url_options = {host: host}
 #  config.action_mailer.delivery_method = :smtp # 发送邮件方式
 #  config.action_mailer.smtp_settings = {
 #      :address        => 'smtp.gmail.com',
 #      :port           => 587,
 #      :authentication => :plain,
 #      :user_name      => '"2609746800@qq.com"', #你的gmail帐号
 #      :password       => 'q15992027609' #你的gmail密码
 #  }

  # ActionMailer::Base.delivery_method = :smtp
  # config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.default :charset => "utf-8"
  # config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  # ActionMailer::Base.smtp_settings = {
  #     :address => "smtp.gmail.com",
  #     :port => 587,
  #     :authentication => :login,
  #     :user_name => "2609746800@qq.com",
  #     :password => "q15992027609"
  # }

  ActionMailer::Base.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default :charset => "utf-8"
  #config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  ActionMailer::Base.smtp_settings = {
      :address => "smtp.163.com",
      :port => 25,
      :domain => "163.com",
      :authentication => :login,
      :user_name => "lzzengyu@163.com",
      :password => "q15991599"
  }




  # Disable request forgery protection in development environment
  config.action_controller.allow_forgery_protection = false


  # ActionMailer::Base.delivery_method = :smtp     #使用smtp发送邮件
  #
  # ActionMailer::Base.server_settings ={
  # :address => "smtp.gamil.com",
  # :port => 587,
  # :authentication => :login,
  # :user_name => "lzzengyus@gmail.com",
  # :password => "q1591599",
  # :authentication => 'plain',
  # :enable_starttls_auto => true,
  #}

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  # config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
