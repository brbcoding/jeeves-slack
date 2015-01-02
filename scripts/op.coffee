# Description:
#   Anyone can have voice or op
 
module.exports = (robot) ->
  robot.respond /op me/i, (msg) ->
    robot.adapter.command('MODE', msg.message.user.room, '+o', msg.message.user.name)
 
  robot.respond /op @?([\w .\-_]+)$/i, (msg) ->
    robot.adapter.command('MODE', msg.message.user.room, '+o', msg.match[1].trim())