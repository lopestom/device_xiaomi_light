[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://paypal.me/WhoIm) any donation is highly appreciated!
# TWRP device tree for Xiaomi Poco M4 5G - codenamed "light" - Dimensity 700 - MT6833 - A12

This device tree have encrypt/decrypt mode activated for test because boot.img has 40MB. 
The tester only install `boot-light-A12.img` test file to know if TWRP can start.

### Firmware version: .20230530.V3.03
20230530.V3.03.zip

## Status
- MT6833 - A12
  - Status: booted??
  - [?] booted

   - boot-light-A12.img => Working?? Not working?
  - [?] Working
------------------------------------
     20230mdd => The tester confirm encrypt/decrypt working after 00 files tested.
------------------------------------

## Device specifications
| Device                  | Xiaomi Poco M4 5G                                           |
| ----------------------- | :---------------------------------------------------------- |
| SoC                     | MediaTek Dimensity 700 5G (7nm)                             |
| CPU                     | 2 x 2.2 GHz Cortex-A76 & 6 x 2.0 GHz Cortex-A55             |
| GPU                     | Mali-G57 MC2                                                |
| Memory                  | 4GB / 6GB                                                   |
| Shipped Android version | 12 (MIUI 13)                                                |
| Storage                 | 64GB / 128GB                                                |
| MicroSD                 | Up to 512 GB                                                |
| Battery                 | Non-removable Li-Po 5000 mAh                                |
| Dimensions              | 164 x 76.1 x 8.9 mm                                         |
| Display                 | 2400 x 1080 (20:9), 6.58 inch                               |
| Rear Camera 1           | 50 MP, f/1.8, 0.7µm, PDAF                                   |
| Rear Camera 2           | 2 MP, f/2.4, (depth)                                        |
| Front Camera            | 8 MP, f/2.4, 1.0µm                                          |

Xiaomi Poco M4 5G is an entry-level smartphone from Xiaomi announced in May 2022.

Specs: https://www.gsmarena.com/doogee_light-11807.php

![Xiaomi Poco M4 5G](https://fdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-poco-m4-5g-2.jpg)

===================================================================== 

### TWRP Pictures
[![download](https://img.shields.io/github/downloads/lopestom/device_xiaomi_light/total)](https://github.com/lopestom/Action-Recovery-Builder-CT/releases/download/5676166662/boot.img)
<details><summary>TWRP Pictures - Click to open</summary>
<p>

![TWRP Logo](https://github.com/lopestom/)
![Decryption](https://github.com/lopestom/)
![Decrypted](https://github.com/lopestom/)
![Backup Info](https://github.com/lopestom/)
</p>
</details>

## Big thanks to:
- [lesshiy from 4pda](https://4pda.to/forum/index.php?showuser=3025593) for tests.
- [TeamWin](https://github.com/TeamWin) for TWRP SC.
* TWRP version 3.7.0_12 *

                  ####### generated by lopestom #######
===================================================================== 

## To build with minimal twrp AOSP
```
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_light-eng
mka bootimage
```

