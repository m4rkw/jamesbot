
class JamesBot
  def self.map
    {
      48 => "use freebsd, use clojure",
      99 => "be quiet, or i will replace you with a very small lisp macro.",
      69 => "shut up, i'm perpetrating lisp macros.",
      70 => "fucking hipster",
      100 => "that sounds shit.",
      102 => "i want people to use scala because i can laugh when they fail",
      104 => "what it is, it's composed of tedium",
      106 => "can i do it from home?",
      107 => "yeah well, you would think that.",
      110 => "DO YOU EVEN CONTAIN BRO?",
      111 => "i can't employ you, i might catch kubernetes or something",
      120 => "8 bottles of kriek and a steak and i might think about it",
      122 => "shush, scala boy.",
      123 => "you don't even akka split brain resolver",
      151 => "you think war is bad, try c++",
      152 => "that's the sort of thing that brings back enthusiasm to drink",
      154 => "fascinating.",
      160 => "use c++",
      161 => "dude where's my car?",
      163 => "that's what she said",
      164 => "inorite"
    }
  end

  def self.handle_message(m)
    if m.raw.match /jamesbot\: .*?\?/
      sleep 1
      return "that sounds shit."
    end

    a = Random.rand(2500)

    map.each do |n, val|
      if a == n
        sleep 1
        return val
      end
    end

    false
  end
end
