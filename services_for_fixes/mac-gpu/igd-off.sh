#!/bin/bash

# set to integrated
sudo sh -c 'echo IGD > /sys/kernel/debug/vgaswitcheroo/switch'

# turn off dGPU
sudo sh -c 'echo OFF > /sys/kernel/debug/vgaswitcheroo/switch'
