module.exports = (robot) ->
  # clam down!
  clamPics = [
    "http://i53.tinypic.com/21ae2oj.jpg"
    "http://th03.deviantart.net/fs70/PRE/i/2013/029/4/5/clam_down_by_sketchinetch-d5t7afk.png"
    "http://fc08.deviantart.net/fs70/f/2011/173/b/3/clam_down_by_daslenderman-d3joizz.jpg"
    "http://img4.wikia.nocookie.net/__cb20140928162240/lapis/images/d/d6/Clam_down_their_pal_buddy.png"
    "http://lh5.ggpht.com/-OEDJcNgW5q8/UCCmjEZ49ZI/AAAAAAAAAwY/CksKmAMRqTk/IMAG6013-1-1-1-1-1.png"
    "http://i208.photobucket.com/albums/bb31/dorksquid/p-chat/clamdown.png"
  ]
  
  robot.hear /clam\sdown/i, (msg) ->
    msg.send msg.random clamPics
    