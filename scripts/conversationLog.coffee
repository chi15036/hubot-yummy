moment = require('moment')

module.exports = (robot) ->

    conversation=[]

    robot.hear /.*/, (res) ->
      name =  res.message.user.name
      text = res.message.text
      nowTime = new Date().getTime()
      time = moment(nowTime).format('YYYY-MM-DD HH:mm')

      message = name: name, text: text, time: time

      conversation.push(message)
      robot.brain.set 'conversation',conversation
#      conversation = robot.brain.get('conversation') or {}
#      res.send JSON.stringify(conversation)

    robot.respond /log/i, (res) ->
      conversation = robot.brain.get('conversation') or {}

      logs = ""

      for log in conversation
        test = JSON.stringify(log)
        logs = "#{logs} #{test}\n"

      res.send logs
