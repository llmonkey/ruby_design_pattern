class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter)
    @title = 'report title'
    @text = %w(line1 line2 line3)
    @formatter = formatter
  end

  def output_report
    @formatter.call(self)
  end
end

HTML_FORMATTER = lambda do |context|
  puts "<html><head><title>#{context.title}</title></head><body>"
  context.text.each { |line| puts "<p>#{line}</p>" }
  puts "</body></html>"
end

PLAIN_FORMATTER = lambda do |context|
  puts "****title: #{context.title}*****"
  context.text.each { |line| puts "**#{line}**" }
  puts "****END****"
end

Report.new(&HTML_FORMATTER).output_report
Report.new(&PLAIN_FORMATTER).output_report
