## json-brunch
Adds fonts / images support to [brunch](http://brunch.io).

## How?
Well, you've all heard of the data-uri / data-url scheme, right? Well, it's actually kind of awesome. 

The data-uri scheme alowes the explicit input of an image. Aka, from the src="/path.png", you end up with a big string, partially encoded in base64 that fills the gap. Lately, the data-uri scheme is being granted more and more space (limit), so bundling in images and fonts with the rest of your sources is becoming a reality. Bons points for streamlining? Maybe no. Bonus points for having just one request on the client and coolness? Check!

First of all, it's used behind the scenes in canvas drawing, when you want to draw one canvas onto another. I'm not sure if that's what happens when you relay the buffer itself, but you do have the option of directly specifying the source to draw (aka, data-uri scheme + base64 representation of the canvas content). 

I've taken this a bit further, with fonts and images from the server side. This module reads up the images, the fonts, and whatever might come in the future, encodes them as base64 strings and bundles them together with their mime type and a function that wraps them into the classic data-uri scheme : data:<mime>;base64,<string>

## Usage
Add `"dataurl-brunch": "x.y.z"` to `package.json` of your brunch app.

Pick a plugin version that corresponds to your minor (y) brunch version.

If you want to use git version of plugin, add
`"json-brunch": "git+ssh://git@github.com:rentlytics/json-brunch.git"`.
