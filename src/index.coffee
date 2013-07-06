mime = require "mime"

module.exports = class JsonCompiler
  brunchPlugin: yes
  type: 'template'
  extension: 'png'
  pattern: /(\.(png|jpg|woff|otf|ttf|eot|gif))$/

  constructor: (@config) ->
    return

  compile: (data, path, callback) ->
    callback null,"""
		var item = {
			mime: '#{mime.lookup filename}'	,
			content: '#{data.toString('base64')}'
		};
		item.toString = function() { return \"data:\" + item.mime + \";base64,\" + item.content };
		module.exports = item;
	"""
