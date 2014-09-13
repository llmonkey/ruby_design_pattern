require './formatter'
require './html_formatter'
require './plain_formatter'
require './report'

Report.new(HTMLFormatter.new).output_report
Report.new(PlainFormatter.new).output_report
