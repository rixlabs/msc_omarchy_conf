# Omarchy adventure

The seed of this idea was X. I kept seeing people posting about Omarchy and how nice it is and since I always found DHH to be an inspired and inspiring person I wanted to try to play with linux again after at least 15 year of absemce from the scene

I had an old MacBook Pro in a corner of a closet since 4 years. It is my old old work laptop that I bought back from my past employer. The model is a 2017 15 inch. The one with the stupid touch pad and no ESC key. 

## First install

1. Download iso
2. Etch
3. Boot Mac with USB ISO
4. Change keyboard layout from install doeesnt work
5. select a password
6. After first boot realise the keyboard layout is wrong.
7. change the layout in …/.config/hypr/input.conf
8. Realise the password is wrong
9. CHange password with passwd
10. Reboot
11. locked out

Big decision moment here... reinstall

## Second install

Big change. External keyboard.
Somehow relise that it is still wrong after selectinig the right layout German(CH)



### General problems

#### Wifi
At the beginning I could use Wifi only with my Phone hot spot. super weired.
For the wifi I searched the shit out of the planet until I found this link [Txpower](https://bbs.archlinux.org/viewtopic.php?id=291889). 

#### Mouse
My MX Master 3s was easy to connect but I had immediately a lateny problem. The movement was choppy an not at all smooth.

After some digging I found this config ```no_harware_cursor = true``` to be added to the cursor config. More infos here: [Mouse is laggy/choppy]
(https://www.reddit.com/r/hyprland/comments/1fzeqf5/mouse_is_laggychoppy/)

#### Audio
still not solved even after installing the patch snd_hda_macbookpro

#### Monitor name swap
Use the description of the monitor coming from ```hyprctl monitors```
Instead of using the monitor name use ```desc:<monitor descrition>```

#### Suspend and don't come back



#### Video glitch
~ ❯ sudo cat /sys/kernel/debug/vgaswitcheroo/switch

0:DIS:+:Pwr:0000:01:00.0
1:DIS-Audio: :DynOff:0000:01:00.1
2:IGD: :Off:0000:00:02.0

To manipulate the two cards: the DIS and IGD you can use the vgaswitcheroo

* set to integrated *


sudo sh -c 'echo IGD > /sys/kernel/debug/vgaswitcheroo/switch'

* turn off dGPU *
sudo sh -c 'echo OFF > /sys/kernel/debug/vgaswitcheroo/switch'

* print mux state. *
* ensure that "DIS" is "OFF" and "DIS-Audio" is "DynOff" *
sudo cat /sys/kernel/debug/vgaswitcheroo/switch



#### Useful links
The guide with all the life saving GPU magic links
[ArchLinux Setup Guide For Intel MacBook Pro](https://dev.to/x1unix/archlinux-setup-guide-for-intel-macbook-pro-58b8#turn-off-discrete-amd-gpu)

Arch linux WIki with mac problems
[Mac/Troubleshooting](https://wiki.archlinux.org/title/Mac/Troubleshooting)
[]()


