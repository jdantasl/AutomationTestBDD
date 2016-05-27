require ('./features/support/env.rb')

Dado(/^que eu acesse o portal do BeeCambio$/) do
  page.driver.browser.manage.window.maximize
  visit 'http://stage.beecambio.com/'
end

Quando(/^eu clicar no link Login$/) do
  click_link 'Login'
end

Quando(/^eu escolher pessoa fisica$/) do
  page.all(:radio_button, 'F')[0].set(true)
end

Quando(/^eu preencher o campo CPF$/) do
  find(:xpath, '//html/body/div[2]/div[2]/div/div[1]/div/form/div[2]/span/input').set("54283321230")  
end

Quando(/^eu preencher o campo Senha$/) do
  find(:xpath, '//html/body/div[2]/div[2]/div/div[1]/div/form/div[3]/input').set("egenius")  
end

Quando(/^eu acionar o botao Entrar$/) do
  click_button 'Entrar' 
end

Entao(/^meu usuario sera logado$/) do
  find(:css, '.ng-binding.toast-title').text
  expect(page).to have_content("Bem vindo!")
end