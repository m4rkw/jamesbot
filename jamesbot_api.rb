
class JamesBot
  def self.map
    {
      48 => "use freebsd, use clojure",
      99 => "be quiet, or i will replace you with a very small lisp macro.",
      69 => "shut up, i'm perpetrating lisp macros.",
      70 => "fucking hipster",
      100 => "that sounds shit.",
      150 => "either i work from home or your entire company fails.",
      102 => "i want people to use scala because i can laugh when they fail",
      103 => "OutOfMemoryError on the left, thread limit on the right, here i am stuck in the middle with the pieces of my dreams and proge",
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
      155 => "seriously if i have to google for you to make you shut up i will be most displeased",
      160 => "use c++",
      161 => "dude where's my car?",
      162 => "duuude... what if... what if clojure is sativa and common lisp is.. indica!"
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
