require './report'

class HTMLReport < Report
  def output_start
    puts "<title>#{@title}</title>"
  end

  def output_line(line)
    puts "<p>#{line}</p>"
  end

  def output_end
    puts "<div>End of the file</div>"
  end
end
