class Cheque < ApplicationRecord
  belongs_to :user
  belongs_to :product

  @n = Array.new

  def contador(numero = 0)
    return 0 if numero.nil?

    numero + 1
  end

  def new_cheque(n)
    return Array.new(1,0) unless n.present?
    n << n.last+1
  end
  #   cheque = []
  #   sum = 0
  #   cheque.each { |n| sum += n.numero }
  # end

  def contador2(numero = 50)
    cheque = []
    cheque.each { |n| numero -= n.numero }
    cheque << numero
  end

end
