#!/bin/sh -e

# Take a screenshot
scrot /tmp/screen_locked.png

# Pixellate it 4x
mogrify -scale 25% -scale 400% /tmp/screen_locked.png

# Pause dunst (buggy)
# killall -SIGUSR1 dunst

# Lock screen
# -i to display the image
# -n to prevent i3lock from forking
i3lock -n -i /tmp/screen_locked.png

# Resume dunst
# killall -SIGUSR2 dunst
