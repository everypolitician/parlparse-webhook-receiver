require 'faraday'
run -> env {
  body = [
    'Northern_Ireland/Assembly',
    'Scotland/Parliament',
    'UK/Commons'
  ].map do |l|
    Faraday.post("https://everypolitician-rebuilder.herokuapp.com/#{l}").body
  end
  [200, {}, body]
}
