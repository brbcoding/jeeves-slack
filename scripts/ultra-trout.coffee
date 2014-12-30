module.exports = (robot) ->
  robot.hears /!slap2\s(.*)/i, (msg) ->
    reply = msg.random robot.brain.get('replies')
    msg.send reply[0] + msg.match[0] + reply[1] if reply


  robot.hears /!addslap(.*)\<name>(.*)/i, (msg) ->
    replies = robot.brain.get('replies')
    robot.brain.set 'replies', replies.concat [msg.match[0], msg.match[1]]
    msg.send 'Added Slap.'