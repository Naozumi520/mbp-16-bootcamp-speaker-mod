# MBP16-BOOTCAMP-SPEAKERMOD 2.0
  
This is an Equalizer APO configuration designed to fix the lack of tuning of the MacBook Pro 16 inch (2019) speaker when using Bootcamp.

## Notice  
This configuration is based on tuning for pure sound output without Dolby Atmos. Once you install this configuration, Dolby Atmos will likely stop functioning.

Although this configuration has improved the sound experience, it is still not accurate enough for reference purposes. In other words, you should not use the speaker with this configuration as a reference for audio production.

## Preview
https://user-images.githubusercontent.com/52615455/221608698-3e18ea57-824d-4d16-9105-edc0f0a70561.mov

Song: Hopes and Dreams (from UNDERTALE)

## Included files
```
bootcamp-speaker-mod
│   README.md
│
├───config
│       config.txt
│       impulse_20230227_19_59.wav
│
└───VSTPlugins
        KSHMREssentialsKick.dll
        Proximity-x64.dll
```

## Installation
### - Install Equalizer Apo
First, install Equalizer APO on your bootcamp. You can find the setup in the release package.

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

Finally, restart Bootcamp. After the reboot, you should be able to hear the difference immediately.

## Legal Disclaimer
This configuration, created by Naozumi, includes two freeware plugins, KSHMREssentialsKick.dll and Proximity-x64.dll, that are not owned or developed by the creator of this configuration. If the owners of these plugins have any objections to their inclusion in this configuration, please contact Naozumi (naozumi0512@gmail.com) and I will promptly remove them from the configuration.

## Disclaimer
The use of this configuration is at your own risk. The creator (Naozumi) will not be responsible for any damage or loss caused to your device or data, including but not limited to loss of profits or data, arising from the use of this configuration. You agree to use this configuration at your own discretion and are solely responsible for any consequences that may arise from its use. By using this configuration, you acknowledge and agree to these terms.

## Credits
- [bananakid](https://github.com/bananakid)
