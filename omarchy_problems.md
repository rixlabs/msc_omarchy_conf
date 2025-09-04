# Omarchy adventure

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

Agter some digging I found this config ```no_harware_cursor = true``` to be added to the cursor config. More infos here: [Mouse is laggy/choppy]
(https://www.reddit.com/r/hyprland/comments/1fzeqf5/mouse_is_laggychoppy/)

#### Audio
still not solved even after installing the patch snd_hda_macbookpro

#### Monitor name swap
Use the description of the monitor coming from ```hyprctl monitors```
Instead of using the monitor name use ```desc:<monitor descrition>```

#### Suspend and don't come back

