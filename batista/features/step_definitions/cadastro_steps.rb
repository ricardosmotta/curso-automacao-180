
Dado('que acesso a página de login') do
    visit "/users/new"
end

Quando('submeto o meu cadastro completo') do
    find("#user_name").set "Ricardo"
    find("#user_lastname").set "Motta"
    find("#user_email").set "ricardo@teste.com"
    find("#user_address").set "R. Itibiruna, 83"
    find("#user_profile").set "Quality Assurance"
    find("#user_gender").set "Masculino"
    find("#user_age").set "42"
    find("#user_university").set "Uninter"

    click_button "Criar"
end

Então('sou redirecionado para tela de sucesso') do
    row-bg-wrap instance-1

    sleep 5 #temporário
end