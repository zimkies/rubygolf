class Golf
  class << self
    def hole1 a
      a.inject :*
    end

    def hole2
      (?a..?z).to_a
    end

    def hole3 a
      (1..a).inject :*
    end

    def hole4 a
      a.map{|x|
        case x[0]
        when ?m
          "hat(#{x})"
        when ?d
          x.chop<<'(bone))'
        else
          "dead#{x[3..-1]}"
        end
      }
    end

    def hole5 a
      (1..a.size).flat_map{|n|a.each_cons(n).to_a}
    end

    def hole6 n
      (1..n).map { |a|
        s = ''
        s << 'fizz' if a % 3 == 0
        s << 'buzz' if a % 5 == 0
        s[0] ? s : a
      }
    end

    def hole7 a
      r = [] << a[0].to_s
      a.map.with_index { |i, x| n = a[x+1]; n != i+1 ? (r[-1]<<"-#{i}" if i != r[-1].to_i; r << n.to_s) : p }
      r.pop
      r
    end

    def hole8 n
      return n<2 ? [1]:[1,1] if n < 3
      a=hole8 n-1
      a<<a[-1]+a[-2]
    end

    def hole9 s
      s.split.map { |w| w.size < 11 ? w : "#{w[0..3]}...#{w[-3..-1]}" }.join ' '
    end
  end
end
