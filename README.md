# ScreenCapture-for-Windows

Easy FFmpeg screen capturing script for Windows. Make sure FFmpeg is in your windows `PATH`. Captures end up on your user's desktop.

Stop capturing by pressing `q`.

Audio capturing is enabled by default but you should change your input device's name in the script. You can find its name with `ffmpeg -list_devices true -f dshow -i dummy`.

More info on commands [here](https://trac.ffmpeg.org/wiki/Capture/Desktop).

---

A binary of FFmpeg  for 64-bit Windows can be found [here](https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-4.1.3-win64-static.zip).

Licensing / Legal matters for of the FFmpeg binary are explained in detail [here](https://ffmpeg.org/legal.html).
