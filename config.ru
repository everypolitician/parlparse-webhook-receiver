require 'faraday'
run -> env {
  body = [
    'Northern-Ireland/Assembly',
    'Scotland/Parliament',
    'UK/Commons'
  ].map do |l|
    Faraday.post("https://everypolitician-rebuilder.herokuapp.com/rebuild/#{l}/parlparse").body
  end
  [200, {}, body]
}
