## stream2canvas

### Libs
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
