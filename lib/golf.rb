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

    def hole6(n)
      (1..n).map { |a|
        s = ''
        s << 'fizz' if a % 3 == 0
        s << 'buzz' if a % 5 == 0
        s[0] ? s : a
      }
    end

    def hole7(a)
      # m=a.each_cons(2).map{|x|x[1]-x[0]}
      # a.map.with_index{|x,i|

      # }
      # return [] if !a[0]
      # i,j=0,1
      # while a[j]&&a[j]-a[i]==1;i+=1;j+=1;end
      # (i!=j ? ["#{i}-#{j}"]:i.to_s) + hole7(a[j+1..-1])
    end

    def hole8(n)
      return n<2 ? [1]:[1,1] if n < 3
      a=hole8 n-1
      a<<a[-1]+a[-2]
    end

    def hole9(s)
      s.split.map { |w| w.length < 11 ? w : "#{w[0..3]}...#{w[-3..-1]}" }.join ' '
    end
  end
end
