SCHEDULER.every '15m', :first_in => 0 do |job|
  send_event('Today', { value: 160 }) #Data received from property water meters using Taggle tech or comparable system
  send_event('This_Week', { value: 723 }) #Acclimation of data for the week
  send_event('example_data', {value: 68 }) #Percentage of "allowance",target or community average
end

SCHEDULER.every '1440m', :first_in => 0 do |job|
  send_event('Daily_Average', { value: 182 }) #Average of previous daily consumptions
  send_event('Tip', {value: "72hr Outlook: Expecting 80ml of precipition over the next three days. Using tank water is recommended."}) #Scraped from BOM 7 day forcast
end