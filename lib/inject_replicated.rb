Range.class_eval do

  def inject_replicated memo = 0, &block
    output = memo
    self.each do |val|
      output = block.call output, val
    end
    output
  end

end

# Array.class_eval do
#
#   def inject_replicated memo = [], &block
#     self.each do |val|
#       memo = block.call memo, val
#     end
#     memo
#   end
#
# end
