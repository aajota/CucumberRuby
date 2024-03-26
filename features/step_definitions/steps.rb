Quando('acesso a página proncipal da Starbugs') do
     visit 'https://starbugs.vercel.app/'
end
  
  Então('eu quero ver a lista de cafés disoníveis') do
     all('.coffee-item')
end
  