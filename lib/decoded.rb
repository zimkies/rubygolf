class Golf
  class << self
    [
      -> a{a.inject :*},
      -> {(?a..?z).to_a},
      -> a{(1..a).inject(:*)},
      -> a{
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
      },
      -> a{
        (1..a.size).flat_map{|n|a.each_cons(n).to_a}
      },
      -> n{
        (1..n).map { |a|
          s={fizz: 3, buzz: 5}.map{|k,v|k.to_s if a % v == 0}.join
          s[0] ? s : a
        }
      },
      -> a{
        r = [] << a[0].to_s
        a.map.with_index { |i, x|
          a[x+1] != i+1 ? (r[-1]<<"-#{i}" if i != r[-1].to_i
            r << "#{a[x+1]}") : p
        }
        r.pop
        r
      },
      -> n{
        return [1,1] if n < 3
        a=hole8 n-1
        a<<a[-1]+a[-2]
      },
      -> s{
        s.split.map { |w| w.size < 11 ? w : "#{w[0..3]}...#{w[-3..-1]}" }.join ' '
      }
    ].map.with_index{|m,i|define_method "hole#{i+1}",&m}
  end
end
