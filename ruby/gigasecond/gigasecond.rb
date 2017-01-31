module BookKeeping
  VERSION = 3
end


class Gigasecond

  def self.from(birthday)
    gigasecond = 10**9
    birthday_seconds = birthday.to_i
    return Time.at(gigasecond + birthday_seconds).utc
  end

end
