module.exports = (robot) ->
  beg = ["slaps", "hits", "beats", "pokes"]
  end = ["around a bit with a large trout"
    "in the face with a rotten fish"
    "in the face with a 14 inch dildo"
    "with an ugly stick, though it does no more damage"
    "with a blunt stick"
    "with a spork",
    "around a bit with an uncommonly large clam"
  ]

  robot.hear /!slap\s(.*)/i, (msg) ->
    slapWho = msg.match[1].replace /^\s+|\s+$/g, ""
    msg.reply "#{msg.random beg} #{slapWho} #{msg.random end}"