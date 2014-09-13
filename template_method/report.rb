class Report
  def initialize
    @title = "report title"
    @contents = ["report line 1", "report line 2", "report line 2"]
  end

  def output_report
    output_start
    output_body
    output_end
  end

  def output_start
  end

  def output_body
    @contents.each do |line|
      output_line line
    end
  end

  def output_line(line)
    raise NotImplementedError
  end

  def output_end
  end

end
