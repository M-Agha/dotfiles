isFocused=$(yabai -m query --windows --window | jq -re ".id")
echo $isFocused
if [[ -z "$isFocused" ]]; then # -z >> true if it's null
    $(yabai -m window --focus $(yabai -m query --windows | jq -re ".[] | select((.\"is-visible\" == true) and .\"has-focus\" != true).id" | head -n 1))
    echo hi
fi
