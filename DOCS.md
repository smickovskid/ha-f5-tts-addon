# Home Assistant Add-on: Example add-on

## How to use
1. Install the plugin
    - The first installation might take longer (~5-10m) due to the docker image being large (6gb).
2. In the Configuration tab enter: 
    - **Checkpoint** - Defaults to the [hugging face](https://huggingface.co/SWivid/F5-TTS/resolve/main/F5TTS_Base/model_1200000.pt) model.
    - **Vocab** - Defaults to the [hugging face](https://huggingface.co/SWivid/F5-TTS/resolve/main/F5TTS_Base/vocab.txt) vocab.
    - **Reference audio** - Location of the reference audio that is supplied to the socket server for warmup (has to be a public url)
    - **Reference text** - Transcription of the reference audio.
3. Run the plugin
    - This will start it in the background and load up the model into memory and warm it up with the reference audio and transcription.
4. The socket server will be available on `localhost:9998`


For more details you can navigate to the [F5-TTS infer README](https://github.com/SWivid/F5-TTS/blob/main/src/f5_tts/infer/README.md#socket-realtime-client)


## Hardware access
If you want to utilise your GPU, you must turn off the protection mode for the plugin so it can access the hardware.

