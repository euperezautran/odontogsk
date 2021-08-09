# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting all the db"
Product.destroy_all
Brand.destroy_all
User.destroy_all
Cheque.destroy_all
puts '------------------------------------------'
puts 'start seed'
puts 'creating brand'
sensodyne = Brand.create!(name: 'sensodyne/logo sensodyne.png')
corega = Brand.create!(name: 'corega/logo corega.png')
parodontax = Brand.create!(name: 'parodontax/logo parodontax.png')
puts '------------------------------------------'
puts 'creating products'
PRODUCT_SENSODYNE = [['sensodyne/SDY_TRUE_WHITE.jpg',"cheque_sensodyne_truewhite.jpg"], ['sensodyne/SDY_TW.png', 'cheque_sensodyne_cepillos.jpg'], ['sensodyne/GSK_GEP_WLA_3.png', "cheque_sensodyne_rapidoalivio.jpg"], ['sensodyne/SDY Proesmalte Kids.jpg', "cheque_sensodyne_proesmalte_ninios.jpg"], ['sensodyne/sdy_cool-mint_enjuague_250ml-2.jpg', "cheque_sensodyne_enjuague.jpg"], ['sensodyne/SDY_LIMPIEZA_PROFUNDA_90g_B.jpg', "cheque_sensodyne_limpiezaprofunda.jpg"], ['sensodyne/SDY_PROESMALTE_BLANQUEADOR_90g_B.jpg', "cheque_sensodyne_proesmalte_blanqueador.jpg"], ['sensodyne/SDY_REPARA_PROTEGE_BLANQ_B.jpg', "cheque_sensodyne_reparayprotege.jpg"]]
PRODUCT_SENSODYNE.each do |product|
  Product.create!(
    name: product[0],
    brand_id: sensodyne.id,
    image_name: product[1]
    )
end
PRODUCT_COREGA = [['corega/CGA Menta 40g.jpg', "cheque_corega_cremas.jpg"], ['corega/CGA Tabs 3 min 30u.jpg', "cheque_corega_tabs.jpg"]]
  PRODUCT_COREGA.each do |product|
  Product.create!(
      name: product[0],
      brand_id: corega.id,
      image_name: product[1]
      )
  end
PRODUCT_PARODONTAX = [['parodontax/CEPILLO PDX.jpg', "cheque_parodontax_cepillo.jpg"], ['parodontax/PARODONTAX COMPLETE-Limpio.jpg', "cheque_parodontax_completeprotection.jpg"], ['parodontax/PDX Blanqueador 116g.jpg', "cheque_parodontax_blanqueador.jpg"], ['parodontax/PDX Fluor 90g BAJA.jpg', "cheque_parodontax_fluor.jpg"]]
PRODUCT_PARODONTAX.each do |product|
    Product.create!(
      name: product[0],
      brand_id: parodontax.id,
      image_name: product[1]
    )
  end
puts '-------------------------------------------'

puts 'creating users'
User.create!(
    first_name: "User",
    last_name: "User",
    email: "user@user.com",
    password: "123456",
    registration_number: 111111,
    province: "CABA"
  )

puts 'creating cheque numbres'
# NUMEROS_DE_CHEQUE = 10.times.map{ Random.rand(100000...900000) }
Product.all.each_with_index do |product, index|
  Cheque.create!(
    numero: index,
    user: User.first,
    product: product
  )
end
puts '-------------------------------------------'
puts 'end seed'
