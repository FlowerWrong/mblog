

class AttrReader
  attr_reader :attr_ar
end

p AttrReader.new.methods.grep(/attr/)

class AttrWriter
  attr_writer :attr_aw
end

p AttrWriter.new.methods.grep(/attr/)

class Attr
  attr_accessor :attr
end

p Attr.new.methods.grep(/attr/)
