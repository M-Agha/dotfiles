#!/usr/bin/env sh

number_of_windows=$(yabai -m query --windows --space | jq 'length')
number_of_stacked=$(yabai -m query --windows --space | jq -c 'map(select(."stack-index" != 0)) | length')
currspace=$(yabai -m query --spaces --space | jq '.index')

padding=13
spadding=44

[[ "$number_of_windows" -eq 1 ]] && padding=$padding
[[ "$number_of_stacked" = 0 ]] && spadding=$padding

yabai -m config --space "$currspace" top_padding $padding
yabai -m config --space "$currspace" bottom_padding $padding
yabai -m config --space "$currspace" left_padding $spadding
yabai -m config --space "$currspace" right_padding $padding
yabai -m config --space "$currspace" window_gap $padding


# #!/usr/bin/env bash

# number_of_windows=$(yabai -m query --windows --space | jq 'length')
# number_of_stacked=$(yabai -m query --windows --space | jq -c 'map(select(."stack-index" != 0)) | length')

# padding=13
# spadding=44

# [[ "$number_of_windows" -eq 1 ]] && padding=0
# [[ "$number_of_stacked" = 0 ]] && spadding=$padding

# yabai -m config --space mouse top_padding $padding
# yabai -m config --space mouse bottom_padding $padding
# yabai -m config --space mouse left_padding $spadding
# yabai -m config --space mouse right_padding $padding
# yabai -m config --space mouse window_gap $padding

