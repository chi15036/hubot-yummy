module.exports = (robot) ->

   robot.hear /.*= =.*/, (msg) ->
     msg.reply "(＞x＜)"

   robot.hear /.*0.0.*/, (msg) ->
     msg.reply "o(〒﹏〒)o"

   robot.hear /.*-.-.*/, (msg) ->
     msg.reply "(￣▽￣)"
