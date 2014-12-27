slapMessages = [
  "slaps #{slapWho} around a bit with a large trout",
  "slaps #{slapWho} in the face with a rotten fish",
  "beats #{slapWho} in the face with a 14\" dildo",
  "beats #{slapWho} with an ugly stick, even though it doesn't matter",
  "stabs #{slapWho} with a blunt stick",
  "stabs #{slapWho} with a spork"
]

module.exports = (robot) ->
  robot.hear /!slap\s(.*)/i, (msg) ->
    slapWho = msg.match[1];
    msg.reply msg.random slapMessages