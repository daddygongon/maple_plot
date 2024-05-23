# frozen_string_literal: true

require_relative "maple_plot/version"

module MaplePlot
  class Error < StandardError; end
  def hello
    "Hello world."
  end
  def listplot3d(data_name='data')
    
    cont =<<"EOS"
with(plots):
listplot3d(#{data_name},
axesfont=[Helvetica,   roman, 14],
#legend = ["Sine Plot", "Cosine Plot"], 
titlefont = ["ARIAL", 15], 
#title = "TITLE",
labels = ["x", "y","boundary energy [mJ/m^2]"], 
labeldirections = ["horizontal", "horizontal","vertical"], 
labelfont = [Helvetica, 14]
#linestyle = [solid, longdash], 
#legendstyle = [font = [
#"HELVETICA", 9], location = right]
);
EOS
  end
end
