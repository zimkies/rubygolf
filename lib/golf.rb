class Golf

  class << self
    def hole7 a
      (r = []) << a[0].to_s
      a.each_with_index { |i,x| a[x+1] != i+1 ? (r.last<<"-#{i}" unless i == r[-1].to_i; r << "#{a[x+1]}") : p }
      r.pop
      r
    end
  end
end
