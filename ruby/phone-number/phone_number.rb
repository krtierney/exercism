module BookKeeping
  VERSION = 2
end

class PhoneNumber
  def self.clean(unformatted_number)
    phone_number = unformatted_number.delete('^0-9')
    is_valid? phone_number
  end

  private

  def self.is_valid?(phone_number)
    if phone_number.length == 11 && phone_number.start_with?('1')
      phone_number = phone_number[1..-1]
    end
    if phone_number.length == 10 && !phone_number.start_with?('1')
      if phone_number[3] != '0' && phone_number[3] != '1'
        phone_number
      end
    else
      nil
    end
  end

end
