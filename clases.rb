#Clase CreditCard
class CreditCard
  attr_accessor :name, :number, :expiration, :cvc, :status, :cards

  def initialize#(name, number, expiration, cvc, status)
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status
    
  end
#Cinco instancias de CreditCard
  def name
    @name    
  end

  def number
    @number
  end

  def expiration
    @expiration
  end

  def cvc
    @cvc
  end

  def status
    @status
  end

  def cards
    @cards = []
  end
end

#Array con cinco objetos de tarjetas de crédito
["#{@name}, #{@number}, #{@expiration}, #{@cvc}, #{@status}"]

Name = CreditCard.new
Number = CreditCard.new
Expiration = CreditCard.new
cvc = CreditCard.new
status = CreditCard.new

cards = [Name, Number, Expiration, cvc, status]
#tests 
cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

#método para mostrar datos de tarjetas

 # def data_card
 #   "Amex", 2345673444, 12/15, 2345, [234, 567, 456, 567, 344],   
 #   "ScotiaBank", 2345673744, 12/16, 2845, [234, 345, 456, 567, 344],   
 #   "Bancomer", 2345673444, 12/15, 2645, [234, 345, 456, 567, 344],   
 #   "Serfin", 2345473454, 12/20, 1345, [234, 345, 456, 567, 344],   
 #   "BanCoppel", 2345373464, 12/18, 2445, [567, 345, 456, 567, 344],                 
 # end

 
# |     name     |     number     |    expiration  |      cvc      |           status          |
# ----------------------------------------------------------------------------------------------
# |   Amex       |    2345673444  |      12/15     |      2345     | [234, 567, 456, 567, 344] |  
# |   ScotiaBank |    2345673744  |      12/16     |      2845     | [234, 345, 456, 567, 344] |  
# |   Bancomer   |    2345673444  |      12/15     |      2645     | [234, 345, 456, 567, 344] |  
# |   Serfin     |    2345473454  |      12/20     |      1345     | [234, 345, 456, 567, 344] |  
# |   BanCoppel  |    2345373464  |      12/18     |      2445     | [567, 345, 456, 567, 344] |   















