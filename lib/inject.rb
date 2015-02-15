class Array

def inject_alt(start_point = 0, &block)
    copy = self.dup
    start_point == 0 ? total = copy.shift : total = start_point      
    copy.each {|element| total = yield(total, element)}
    total
end
end
