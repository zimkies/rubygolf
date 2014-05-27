class Golf
  class << self
    def hole1(a)
      a.inject(:*)
    end

    def hole2
      (?a..?z).to_a
    end

    def hole3(a)
      (a.downto 1).inject(:*)
    end

    def hole4(a)
      a.map{|x|
        case x[0..2]
        when "man"
          "hat(#{x})"
        when "dog"
          x.chop<<'(bone))'
        else
          "dead#{x[3..-1]}"
        end
      }
    end

    def hole5(a)
      (1..a.size).flat_map{|n|a.each_cons(n).to_a}
    end
  end
end
