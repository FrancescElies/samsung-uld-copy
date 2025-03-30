set shell := ["nu", "-c"]

default := "install-printer"

install-printer:
  sudo sh ./install-printer.sh
  sudo systemctl restart cups
  sudo systemctl restart avahi-daemon
  cat /etc/cups/cupsd.conf | grep Browsing
  echo Browsing Yes? If not Yes modify /etc/cups/cupsd.conf
