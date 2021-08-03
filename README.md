# reccap
A couple of simple scripts for desktop region recording using ffmpeg/avconv and [slop](https://github.com/naelstrof/slop).

# Usage
Start recording:<br />
`reccap-start FILENAME [fps=24] [ffmpeg/acvonv] [pusle/alsa] [X,Y] [WIDTHxHEIGHT]`<br />
ffmpeg is preffered, audio not enabled unless specified, specifying both width and height bypasses slop


Stop recording:<br />
`reccap-kill FILENAME`

