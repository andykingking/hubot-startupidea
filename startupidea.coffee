# Description:
#   Suggests an idea for a hot new startup!
#
# Dependencies
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot startup idea me - Gives you a great idea for a startup.
#
# Notes:
#   Relies a little (a lot) on http://startupidea.me
#
# Author:
#   Andrew King

module.exports = (robot) ->
  robot.respond /startup idea( me)?/i, (msg) ->
    robot.http('http://startupidea.me')
      .get() (err, res, body) ->
        msg.send body
