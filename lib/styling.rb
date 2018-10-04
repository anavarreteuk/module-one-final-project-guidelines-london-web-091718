module Styling

  def puts_slow(str)
    chars = str.split(//)
    chars.each do |c|
      print c
      sleep 0.15
    end
    print "\n"
  end

  def puts_medium(str)
    chars = str.split(//)
    chars.each do |c|
      print c
      sleep 0.1
    end
    print "\n"
  end

  def puts_fast(str)
    chars = str.split(//)
    chars.each do |c|
      print c
      sleep 0.02
    end
    print "\n"
  end

  def puts_super_fast(str)
    chars = str.split(//)
    chars.each do |c|
      print c
      sleep 0.001
    end
    print "\n"
  end

end
