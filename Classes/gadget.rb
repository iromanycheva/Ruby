require_relative 'app_store'

class Gadget

  attr_accessor :username #generate getter and setter
  attr_reader :production_number, :apps #generate getter
  #attr_writer :password          #generate setter

  #getter method
  #def production_number
  #  @production_number
  #end

  #setter method
  def password=(new_password)
    if validate_password(new_password)
      @password = new_password
    else
      puts "The password is not valid"
    end
  end

  def initialize(username, password)
    #instance variables
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  #instance methods
  def info
    "INFO: Gadget #{@production_number} has the username #{@username}"
  end

  #override to_s method
  def to_s
      "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}."
  end

  def install_app(name)
    app = AppStore.find_app(name)
    self.apps << app unless @apps.include?(app) || app.nil?
  end

  def delete_app(name)
    app = apps.find {|installed_app| installed_app.name == name }
    apps.delete(app) unless app.nil?
  end

  def reset(username, password)
    #we are using setters. Lesson 237
    self.username = username
    self.password = password
    self.apps = []
  end

  #private method
  private

  attr_writer :apps    #private setter method

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2022"
    5.times { middle_digits << alphabet.sample }
    "#{start_digits} - #{middle_digits} - #{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >=6 && new_password =~ /\d/
  end

end

phone = Gadget.new("iPhone", "iphonePassword")
laptop = Gadget.new("mac", "bestpassever")


p Gadget.superclass
p Gadget.superclass.superclass

p phone.methods.sort
p phone.is_a?(Gadget)
p phone.is_a?(Object)

p phone
p laptop

p phone.object_id
p laptop.object_id
p phone.inspect
p phone.instance_variables

p phone.info
p laptop.info

p phone.to_s
p laptop.to_s

p phone.username
p phone.production_number
phone.password=("password")
phone.username=("New User #{rand(0..100)}")
p phone.inspect
phone.password = "bestpasswordever"
p phone.inspect
phone.reset("Iuliia", "okLet'stry234")
p phone.inspect
phone.install_app(:Chat)
phone.install_app(:Twitter)
phone.install_app(:Twitter)
phone.install_app(:news)
p phone.apps
