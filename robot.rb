# Robot Class
class Robot

  def initialize
    @name = ''
  end

  def name
    generate_name if @name == ''
    @name
  end

  def reset
    @name = ''
  end

  private

  def generate_name
    name = ''
    letters = all_letters
    2.times { name << letters.chars[rand(letters.size)] }
    digits = all_digits
    3.times { name << digits.chars[rand(digits.size)] }
    @name = name
  end

  def all_letters
    'ABCDEFGHJKLMNPQRSTUVWXYZ'
  end

  def all_digits
    '123456789'
  end
end
