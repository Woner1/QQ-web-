class ToMailer < ApplicationMailer
  default from: '2609746800@qq.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.to_mailer.sendemail.subject
  #
  def sendemail
    @greeting = "注册成功,欢迎来到QQ音乐"

    mail( :subject => 'QQ音乐',
          :to => "lzzengyu@163.com",
          :from => "lzzengyu@163.com",
          :date => Time.now        )
  end

end
