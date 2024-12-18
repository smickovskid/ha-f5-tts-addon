# F5-TTS Server

_An addon for F5-TTS: A Fairytaler that Fakes Fluent and Faithful Speech with Flow Matching_

This addon will run the [F5-TTS socket](https://github.com/SWivid/F5-TTS/blob/main/src/f5_tts/socket_server.py) server which serves raw pcm audio.


**Disclaimer:** This is a resource intensive addon. This means that the hardware that is running HA should have the relevant resources. This would either be a capable CPU or a GPU that can utilize Cuda. Home assistant TTS caps the response times to 60 seconds max, so your hardware should conform to this and serve the samples in that timeframe.

I will be adding Wyoming support soon so the integration for this addon uses the protocol.

### Credits

F5-TTS: A Fairytaler that Fakes Fluent and Faithful Speech with Flow Matching

**Authors**: _Yushen Chen, Zhikang Niu, Ziyang Ma, Keqi Deng, Chunhui Wang, Jian Zhao, Kai Yu, Xie Chen_
**Journal**: *arXiv preprint arXiv:2410.06885*  
**Year**: 2024  

**Citation**:  
_Chen, Y., Niu, Z., Ma, Z., Deng, K., Wang, C., Zhao, J., Yu, K., & Chen, X. (2024). F5-TTS: A Fairytaler that Fakes Fluent and Faithful Speech with Flow Matching. *arXiv preprint arXiv:2410.06885*._

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armv7 Architecture][armv7-shield]

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
