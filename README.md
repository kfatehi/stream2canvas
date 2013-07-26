## stream2canvas

### 
	input h264 video
real time enabled sails application capturing video stream played by 'play.coffee' on a single canvas

###
	libs:
		* [node_canvas](https://github.com/learnboost/node-canvas)


### Architecture

```

                           +----------------+
                           |Client JS Player|
                           |    <span>      |
               +-----------+    <canvas>    |
               |           |    <audio>     |
               |           +----------------+
               |
      +--------+----+
      | Orchestrator|
      | (WebSocket) +---------------+          +------------+
      +-+-----------+               |          | h264 Video |
        |                           |          +--+---------+
        |                           |             |
        |                           |             |
        |                           |             |
        |         +-----------------+-------------+------+
        |         |                libvlc                |
        |         +--+----------------+---------------+--+
        |            |                |               |
        |       +----+------+---+-----+------+---+----+----+
        |       |  frames   |   |  timecode  |   |  audio  |
        |       |    png    |   |    txt     |   |   ogg   |
  +-----+---+   +-----------+   +------------+   +---------+
  |   HAL   |   |                                          |
  |  JSON   +---+                  Cache                   |
  |Assembler|   |                                          |
  +---------+   +------------------------------------------+
```
