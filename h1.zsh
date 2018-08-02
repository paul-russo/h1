# Function that takes some text and echoes it out centered on the screen,
# surrounded by filler characters. Filler characters default to '-', but
# can be specified as the second argument.

h1() {
  local cols="$(tput cols)"

  if (( cols <= 0 )); then
    cols="${COLUMNS:-80}"
  fi

	local text="$1"
  local dash="$2"

	# override the dash value if it's unset.
	: ${dash:='-'}

  # If there's a value for "text"...
  if [[ -n "$text" ]]; then
    local line=''

    # Get the length of the text, the needed number of padding characters, and then the
    # needed number of characters for the left padding.
		local length_text=${#text}
    local padding=$((cols - (length_text + 2)))
    local length_left=$((padding / 2))

    # Add filler characters until there's enough for the left padding.
    while (( ${#line} < length_left )); do
      line="$line$dash"
    done

    # Then add the given text in the middle, uppercased.
    line="$line $(echo $text | tr '[a-z]' '[A-Z]') "

    # Pad out the rest of the line with filler characters.
   	while (( ${#line} < cols )); do
      line="$line$dash"
    done

    # Finally, echo out the line, stripped of any excess characters.
    echo "${line:0:$cols}"
  fi
}

