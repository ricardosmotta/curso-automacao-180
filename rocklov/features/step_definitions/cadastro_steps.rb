
Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end

Quando('submeto meus dados') do

    MongoDB.new.remove_user("rmotta@google.com")

    find("#fullName").set "Ricardo Motta"
    find("#email").set "rmotta@google.com"
    find("#password").set "teste"

    click_button "Cadastrar"
end

Então('sou redirecionado para o dashboard') do
    expect(page).to have_css ".dashboard"
end

Quando('submeto meus dados SEM o nome') do
    find("#email").set Faker::Internet.free_email
    find("#password").set "teste"

    click_button "Cadastrar"
end

Então('vejo a mensagem de alerta: Oops. Informe seu nome completo!') do
    alert = find(".alert")
    expect(alert.text).to eql "Oops. Informe seu nome completo!"
end

Quando('submeto meus dados SEM o e-mail') do
    find("#fullName").set "Ricardo Motta"
    find("#password").set "teste"

    click_button "Cadastrar"
  end

  Quando('submeto meus dados com e-mail incorreto') do
    find("#fullName").set "Ricardo Motta"
    find("#email").set "ping*pong.com"
    find("#password").set "teste"

    click_button "Cadastrar"
  end
  
  Então('vejo a mensagem de alerta: Oops. Informe um e-mail válido!') do
    alert = find(".alert")
    expect(alert.text).to eql "Oops. Informe um email válido!"
  end

  Quando('submeto meus dados SEM a senha') do
    find("#fullName").set "Ricardo Motta"
    find("#email").set Faker::Internet.free_email

    click_button "Cadastrar"
  end
  
  Então('vejo a mensagem de alerta: Oops. Informe sua senha secreta!') do
    alert = find(".alert")
    expect(alert.text).to eql "Oops. Informe sua senha secreta!"
  end

  Quando('submeto os dados com um e-mail já cadastrado') do
    find("#fullName").set "Ricardo Motta"
    find("#email").set "ping@pong.com"
    find("#password").set "teste"
    sleep 10 #temporario
    click_button "Cadastrar"
  end
  
  Então('vejo a mensagem de alerta: Email já cadastrado') do
    alert_error = find(".alert-error")
    expect(alert_error.text).to eql "🤭 Email já cadastrado."
  end