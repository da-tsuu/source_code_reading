require "slack-notify"
require 'clockwork'
client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
client.notify("Hello There!", "#ソースコードリーディング")
include Clockwork
handler do |job|
  puts "Running #{job}"
end
every(3.minutes,"3分に1回") do
    client.notify("Hello There!", "#ソースコードリーディング")
end