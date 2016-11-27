#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    robomongo
    npm
    1password
    bittorrent
    gyazo
    dropbox
    google-drive
    spectacle
    flux
    dash
    imagealpha
    imageoptim
    intellij-idea
    evernote
    iterm2
    atom
    webstorm
    firefox
    firefoxnightly
    google-chrome
    google-chrome-canary
    malwarebytes-anti-malware
    glimmerblocker
    hammerspoon
    kaleidoscope
    macdown
    opera
    screenflow
    spotify
    skype
    slack
    sublime-text3
    tower
    transmit
    elmedia-player
    utorrent
)

for app in "${apps[@]}"
do
    echo "Installing ${app}"
    brew cask install "${app}" || true
done

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
