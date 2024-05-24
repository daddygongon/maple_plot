# frozen_string_literal: true

require_relative "maple_plot/version"

module MaplePlot
  class Error < StandardError; end
  def hello
    "Hello world."
  end
  def listplot3d(data_name='data_3d')
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
);
EOS
  end

  def pointplot(data_name='data_2d', with_gridlines=true)
    cont =<<"EOS"
with(plots):
p1:=pointplot(#{data_name},symbol=solidcircle,symbolsize=30):
display([p1],
view=[-4..4,-4..4], color=black
#gridlines=true,
axis=[
  gridlines=[thickness=2, subticks=true,
  #linestyle=dash,
  color=black]
]
);
EOS
  end

end
