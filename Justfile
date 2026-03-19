bin_dir  := env('XDG_BIN_HOME',  home_dir() / '.local/bin')
data_dir := env('XDG_DATA_HOME', home_dir() / '.local/share')

_default:

# Install the awsvpn-cli binary and zsh completion script to the appropriate locations
install:
  install -d '{{ bin_dir }}' '{{ data_dir }}/zsh/site-functions'
  install -m 755 awsvpn-cli '{{ bin_dir }}/awsvpn-cli'
  install -m 644 completion.zsh '{{ data_dir }}/zsh/site-functions/_awsvpn-cli'
