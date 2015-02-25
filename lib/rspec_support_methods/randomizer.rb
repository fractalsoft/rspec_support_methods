module RspecSupportMethods
  # Helper methods for ramdom data
  module Randomizer
    def rand_email(size = 5)
      "#{rand_text(size)}@example.com"
    end

    def rand_text(size = 5)
      ('a'..'z').to_a.sample(size).join
    end

    def rand_fixnum(minimum, maximum)
      (minimum..maximum).to_a.sample
    end

    def rand_date
      year = Time.now.year - 1
      "#{rand_fixnum(1, 28)}-#{rand_fixnum(1, 12)}-#{rand_fixnum(1960, year)}"
    end
  end
end
