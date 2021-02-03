class ModelkasMailer < ApplicationMailer
  default from: "fromModelka@gmail.localhost"#,
  #template_path: 'mailers/modelkas'
  #
  def modelka_destroyed(modelka)
    @modelka = modelka
    mail to: 'luka14a@gmail.com',
         subject: "New model is"
  end
end
