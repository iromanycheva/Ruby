require 'json'

begin
  correct = '{"text":"Sounds good. Meeting Tuesday is fine...."}'
  json = "{}".force_encoding('ASCII-8BIT')
  p json.encoding.name
  p correct.encoding.name
  JSON.parse(json)
  p json.encoding.name
  d = JSON.parse(correct)
  p correct.encoding.name
rescue => e
  p e
  p correct
  p d
  p correct.encoding.name
end
