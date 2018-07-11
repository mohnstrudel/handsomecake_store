class RequestMailer < ApplicationMailer

  default from: 'Оповещение с сайта store.handsomecake.com <mohnstrudel@yandex.ru>'

  layout 'mailer'

  def notify_admin(request)
    @request = request

    mail to: 'store@handsomecake.com', subject: 'Новая заявка на монитор'
  end
end
