Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end

Quando('submeto meus dados') do
    find("#fullName").set "Ricardo Motta"
    find("#email").set "teste@google.com"
    find("#password").set "teste"

    sleep 5 # temporário 

    click_button "Cadastrar"
end

Então('sou redirecionado para o dashboard') do
    expect(page).to have_css ".dashboard"
end