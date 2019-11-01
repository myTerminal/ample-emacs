# ample-emacs

![Banner](images/banner.png)

[![Docker Automated](https://img.shields.io/docker/automated/myterminal/ample-emacs.svg)](https://hub.docker.com/r/myterminal/ample-emacs)
[![Docker Stars](https://img.shields.io/docker/stars/myterminal/ample-emacs.svg)](https://hub.docker.com/r/myterminal/ample-emacs)
[![Docker Pulls](https://img.shields.io/docker/pulls/myterminal/ample-emacs.svg)](https://hub.docker.com/r/myterminal/ample-emacs)
[![Docker Layers](https://images.microbadger.com/badges/image/myterminal/ample-emacs.svg)](https://microbadger.com/images/myterminal/ample-emacs)  
[![License](https://img.shields.io/badge/LICENSE-GPL%20v3.0-blue.svg)](https://www.gnu.org/licenses/gpl.html)
[![Join the chat at https://gitter.im/myTerminal/ample-emacs](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/myTerminal/ample-emacs?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

'Just enough' emacs configuration with minimal external packages, also on Docker.

## Setup

Clone the repository with

    git clone https://github.com/myTerminal/ample-emacs

or download the repository as an archive and place it at your `home` directory. Once done, start Emacs to find *ample-emacs*.

## Docker

Pull ample-emacs docker image and start `emacs`

    docker pull myterminal/ample-emacs

## Features

- Minimal interface with almost everything except the window turned off
- The dark [wombat theme](https://github.com/jasonblewis/color-theme-wombat) applied by default, with a readable font-size
- *ido-mode* enabled to save you precious key-strokes at many places
- Navigation through buffers simplified with [winner](http://emacswiki.org/emacs/WinnerMode) and [windmove](http://emacswiki.org/emacs/WindMove).
- No more welcome screen, Emacs starts up to greet you and shows the date
- Only a few included standalone packages, with no dependency on external package archives
- Reload file in a buffer quickly with `<f5>`
- Some more configuration to improve usability

### Pre-configured packages

- [multiple-cursors](https://github.com/magnars/multiple-cursors.el) to be able to edit text in style
- [which-key](https://github.com/justbur/emacs-which-key) to be suggested with what you can do after pressing `C-x`
- [ivy](https://github.com/abo-abo/swiper) (along with counsel and swiper) to make your life easy in general

### Key-bindings

Refer [config-key-bindings.el](.emacs.d/ample-emacs/config-key-bindings.el) for all the pre-configured key-bindings for your convenience.

## Customizing

*ample-emacs* comprises entirely of plain-text Elisp files. Not everyone has the same setup and that means that you can (and may) change these files according to your need. However, if you're the kind of person who regularly pulls updates from upstream, there's a high probability that future improvements may end up resulting in merge conflicts on your local workspace. In order to solve this problem (and according to a suggestion from [@ericllazarus](https://github.com/ericllazarus)), the arrangement now has a redesign providing the user a way to extend their configuration without causing conflicts with future updates. One recommended way of extending *ample-emacs* is described below.

All configuration files under [.emacs.d/ample-emacs](.emacs.d/ample-emacs) with a name starting with `config-` can be extended by creating another file next to it with the same name but ending with a `-custom.el`. For example, if you plan to extend the file [config-packages.el](.emacs.d/ample-emacs/config-packages.el), you can create a file with the name `config-packages-custom.el` next to it in order to hold custom configuration. *ample-emacs* will load the original file first followed by the custom file (if it exists) in the right order as designed and you will achieve the effect you desire. Whenever there's an update to the original file, there will be no merge conflicts and life would be so much simpler!

## References

If you are looking for a configuration with super-powers, try [super-emacs](https://github.com/myTerminal/super-emacs).
