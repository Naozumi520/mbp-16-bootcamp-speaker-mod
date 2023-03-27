# MBP16-BOOTCAMP-SPEAKERMOD 2.0
  
**!!!! Do not download from source, but from the release instead !!!!**  
This is an Equalizer APO configuration designed to fix the lack of tuning of the MacBook Pro 16 inch (2019) speaker when using Bootcamp.

## Notice  
This configuration is based on tuning for pure sound output without Dolby Atmos. Once you install this configuration, Dolby Atmos will likely stop functioning.

Although this configuration has improved the sound experience, it is still not accurate enough for reference purposes. In other words, you should not use the speaker with this configuration as a reference for audio production.

## Preview

| Hopes and Dreams (from UNDERTALE)                                                                                                                             | Grand Escape - A Weathering With You OST                                                                                                                      | July - Autumn                                                                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <video src="https://user-images.githubusercontent.com/52615455/221608698-3e18ea57-824d-4d16-9105-edc0f0a70561.mov" width="320" height="180" controls></video> | <video src="https://user-images.githubusercontent.com/52615455/227760758-76257887-dd00-43d7-852e-3f833570eeca.mov" width="320" height="180" controls></video> | <video src="https://user-images.githubusercontent.com/52615455/227782145-bf018aa8-bfbb-43d2-8e38-aafa6435737d.mov" width="320" height="180" controls></video> |
| v2.0                                                                                                                                                          | v2.2                                                                                                                                                          | v2.2                                                                                                                                                          |

Record device: iPhone 13 Pro

## Included files
```
bootcamp-speaker-mod
│   APOpreamp.exe
│   EqualizerAPO64-1.3.exe
│   Please download from release
│   README.md
│
├───config
│   │   bass_20230307_19_40-48k.wav
│   │   clarity_20230325_18_49.wav
│   │   config.txt
│   │   impulse_20230304_17_16.wav
│   │
│   └───DynamiQ-master
│           .gitignore
│           BassComp1.txt
│           BassComp2.txt
│           BassComp3.txt
│           BassComp4.txt
│           BassComp5.txt
│           BassComp6.txt
│           DynamiQ.txt
│           Extra Vocal Clarity.txt
│           Gain.txt
│           Gain.txt.tmp.txt
│           Include DynamiQ.png
│           LICENSE
│           reacomp-standalone.dll
│           README.md
│
└───VSTPlugins
        KSHMREssentialsKick.dll
        LOVEND_x64.dll
        Proximity-x64.dll
```

## Installation
### - Install Equalizer Apo
First, install Equalizer APO on your bootcamp. You can find the setup in the [release package](https://github.com/Naozumi520/mbp-16-bootcamp-speaker-mod/releases/tag/Release_2.0).

Next, choose and select the playback device "Speaker" only.
<h1 align="center">
<img src="https://user-images.githubusercontent.com/52615455/221891686-61fc2c62-6f83-40cb-afb3-b57f5100eaac.png" installation1" width="800">
</h1>


Then, tick "Troubleshooting options (only use in case of problems)", Select the option "Install as SFX/EFX". Other options will not work. This is very important.
<h1 align="center">
<img src="https://user-images.githubusercontent.com/52615455/221891788-0370019f-7f33-4ab9-a001-fd09ea61a4f7.png" installation2" width="800">
</h1>

Click OK and **do not restart**.
<h1 align="center">
<img src="https://user-images.githubusercontent.com/52615455/221891822-0aec6a6b-a1d8-4110-8cae-6decf099174b.png" installation3" width="800">
</h1>

In the release package, copy both the `config` and `VSTPlugins` folders to `C:\Program Files\EqualizerAPO` and replace the existing one.

Copy APOpreamp.exe to `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`.

Restart Bootcamp. After the reboot, you should be able to hear the difference immediately. But we still have few steps to enable the Loudness Equalization.

Open Equalizer APO's Configurator, select the Speakers and hit "Copy Device command to clipboard", then paste to any where you can see the text.

Open Registry Editor, Go to HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render and find the one matches your device that was copied.
![image](https://user-images.githubusercontent.com/52615455/223436889-523f2f28-727c-4418-8954-6075ad241cd7.png)

Enter FxPropeties of that folder, add the following keys (New String):

| Valuename                                | Value                                  |
| ---------------------------------------- | -------------------------------------- |
| {d04e05a6-594b-4fb6-a80d-01af5eed7d1d},1 | {62dc1a93-ae24-464c-a43e-452f824c4250} |
| {d04e05a6-594b-4fb6-a80d-01af5eed7d1d},2 | {637c490d-eee3-4c0a-973f-371958802da2} |
| {d04e05a6-594b-4fb6-a80d-01af5eed7d1d},3 | {5860E1C5-F95C-4a7a-8EC8-8AEF24F379A1} |

Reboot Bootcamp, open sound setting, open the Properties of the speakers, you will see the new Enhancements tab appeared.

Finally, open the Enhancements tab, turn on Loudness Equalization. You can also turn on Room Correction optionally. Other options are not recommended.  
                                                                                                 
![image](https://user-images.githubusercontent.com/52615455/223436950-112378d5-6bcf-4e5d-9cf6-649da66a7ff8.png)

## Volume issue
You may noticed, the volume is very low after applied thr EQ. Don't worry! It's the normal behavour! This EQ used [DynamiQ](https://github.com/Brad331/DynamiQ), the Intelligent Frequency-Aware Volume Boost. Once your Windows volume is maxed out, keep pressing the volume up button on your keyboard to boost the gain. You should see a white Gain box pop up near the screen's top left corner and hear an increase in volume. With this amazing config, the speaker now will output as much bass and volume as possible (Under 100% = good bass; More than 100% = lower bass and bring higher volume!) For more, please read the [DynamiQ document](https://github.com/Brad331/DynamiQ#dynamiq-intelligent-frequency-aware-volume-boost)

## Contributing Guidelines
Contributions are welcome for `mbp-16-bootcamp-speaker-mod`! And there are some guildlines about that.  

### Current limitations
`mbp-16-bootcamp-speaker-mod` has some difficulties. These are the problems we hope to solve:
- Bass is too deep and not easy to hear. macOS uses an interesting trick called psychoacoustics (same as the Waves MaxxBass and Waves Renaissance Bass plugins). And it's hard to find one for bass, especially if it has to be free.

- As mentioned, we didn't use any psychoacoustic plugins focusing on bass, and the deeper bass was harder to output from the speakers because those speakers were so tiny! I'm currently using [(DynamiQ)](https://github.com/Brad331/DynamiQ) (modified) to output as much bass as possible.

### Config parameters/files
There are some parameters/files refer to:
| Type             | Name                                              | Purpose                                                                                    |     |     |
| ---------------- | ------------------------------------------------- | ------------------------------------------------------------------------------------------ | --- | --- |
| Impulse-Response | `impulse_20230304_17_16.wav`                      | The main EQ for the sounds                                                                 |     |     |
| Impulse-Response | `bass_20230307_19_40-48k.wav`                     | The LP version of `impulse_20230304_17_16.wav` (270Hz), with bass adjustments              |     |     |
| Impulse-Response | `clarity_20230325_18_49.wav`                      | The EQ to improve clarity.                                                                 |     |     |
| Config           | `DynamiQ`                                         | A opensource project on laptop speaker, allowing to output as much bass as possible        |     |     |
| VST2             | `KSHMREssentialsKick.dll`                         | A free vst2 plugin to adjust bass and make the kick harder and clear                       |     |     |
| VST2             | `LOVEND_x64.dll`                                  | A free vst2 plugin to add harmonics to the bass                                            |     |     |
| VST2             | `Proximity-x64.dll`                               | A free vst2 plugin to adjust sound depth                                                   |     |     |
| VST2             | `WSTD_EQ-vst.dll`                                 | A free vst2 plugin to make some little adjustments like High, Mid. Mid Freq and Low        |     |     |
| Parameters       | Copy: L_BASS=L R_BASS=R L_TREBLE=L R_TREBLE=R     | Created a new channel named L_BASS, R_BASS, L_TREBLE, R_TREBLE based on LR channels        |     |     |
| Parameters       | Channel: L_BASS R_BASS                            | The following parameters will only apply on L_BASS and R_BASS channels                     |     |     |
| Parameters       | Channel: L_TREBLE R_TREBLE                        | The following parameters will only apply on L_TREBLE and R_TREBLE channels                 |     |     |
| Parameters       | Copy: L=L_BASS+1.2*L_TREBLE R=R_BASS+1.2*R_TREBLE | Copy L_BASS AND R_BASS to LR channels, Plus 1.2. Copy L_TREBLE and R_TREBLE to LR channels |     |     |

## Legal Disclaimer
This configuration, created by Naozumi, includes five freeware/plugins, `DynamiQ`, `KSHMREssentialsKick.dll`, `Proximity-x64.dll`, `LOVEND_x64.dll` and `EqualizerAPO64-1.3.exe`, that are not owned or developed by the creator of this configuration. If the owners of these freeware/plugins have any objections to their inclusion in this configuration, please contact Naozumi (naozumi0512@gmail.com) and I will promptly remove them from the configuration.

## Disclaimer
The use of this configuration is at your own risk. The creator (Naozumi) will not be responsible for any damage or loss caused to your device or data, including but not limited to loss of profits or data, arising from the use of this configuration. You agree to use this configuration at your own discretion and are solely responsible for any consequences that may arise from its use. By using this configuration, you acknowledge and agree to these terms.

## Credits
- [bananakid](https://github.com/bananakid)
- [Brad331](https://github.com/Brad331) [(DynamiQ)](https://github.com/Brad331/DynamiQ)
