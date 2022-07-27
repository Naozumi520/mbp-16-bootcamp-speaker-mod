# Mbp16,1-bootcamp-Speakers-mod

## 28/7/2022 New EQ present is now in test, will release it after a week.
- More similar as macOS
- More louder
- More details
- No more popping sound and fixed the problem that volume is not balanced.

<details>
  <summary>V1 readme</summary>
Config for Speakers optimization for MBP16 2019 in windows 10
 ###### Warning: Method may invalidate the warranty and caused speakers broken.
 ###### Disclaimer: I'll not be responsible for any damage to the device caused by using the method.

## Modify
  1.Install EqualizerAPO64-1.2.1.exe<br/>
  2.Choose and tick the playback device **"Speaker" only**<br/>
  3.Tick "Troubleshooting options (only use in case of problems)"<br/>
  4.Choose option **"Install as SFX/MFX"** or **"Install as SFX/EFX (experimental)"**. Other options will not working.<br/>
  5.Tick "Allow silent buffer modification"<br/>
  6.Click ok and **no not restart yet**.<br/>
  7.In the same folder, copy **config.txt** & **"DynamiQ-master"** to **C:\Program Files\EqualizerAPO\config** and replace.<br/>
  8.Copy **PCI_DEV_1803_SUBSYS_1887106B_PCI_SUBSYS_72708086.xml** to **C:\Windows\System32\dolbyaposvc** and instead the original.
  9.Reboot.
  10.Open Dolby Atmos, turn profile to Music, Warm.

## Files
```
- DynamiQ-master | The plugin use for reappear similar bass kick as MacOS.
- config.txt | The EqualizerAPO configuration file.
- EqualizerAPO64-1.2.1.exe | EqualizerAPO installer.
- PCI_DEV_1803_SUBSYS_1887106B_PCI_SUBSYS_72708086.xml | Dolby Atmos speaker configuration, port from ~~iMac1,1~~ ( I forgot the model.
- Original_drivers&files | Included all original drivers and configuration, version 6.1.7700.3.
```


Reddit post:
https://www.reddit.com/r/bootcamp/comments/ltifl0/fix_sound_quality_under_bootcamp_of_macbook_pro/

## Preview:
https://www.naozumi.me/bcmod_preview/ (outdated)

## Known issues
~~Pops sounds appear time to time~~ ( Has ameliorated

### Credits: Brad331
https://github.com/Brad331/DynamiQ for DynamiQ

**10/4/2021 Finished adjustment.**
</details>
