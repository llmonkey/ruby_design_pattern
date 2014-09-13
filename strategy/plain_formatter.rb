require './formatter'

class PlainFormatter < Formatter
  def output_report(report)
    puts "****title: #{report.title}*****"
    report.text.each { |line| puts "**#{line}**" }
    puts "****END****"
  end
end
