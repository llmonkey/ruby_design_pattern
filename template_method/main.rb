require './report'
require './html_report'
require './plain_report'

# hreport = Report.new
# p report.output_body
html_report = HTMLReport.new
p html_report.output_report

plain_report = PlainReport.new
p plain_report.output_report
