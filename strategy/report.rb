require './formatter'

class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = 'report title'
    @text = %w(line1 line2 line3)
    @formatter = formatter
  end

  def output_report
    @formatter.output_report(self)
  end
end
