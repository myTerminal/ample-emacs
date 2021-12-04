# ample-emacs

![Banner](images/banner.png)

[![Docker Automated](https://img.shields.io/docker/automated/myterminal/ample-emacs.svg)](https://hub.docker.com/r/myterminal/ample-emacs)
[![Docker Stars](https://img.shields.io/docker/stars/myterminal/ample-emacs.svg)](https://hub.docker.com/r/myterminal/ample-emacs)
[![Docker Pulls](https://img.shields.io/docker/pulls/myterminal/ample-emacs.svg)](https://hub.docker.com/r/myterminal/ample-emacs)
[![Docker Layers](https://images.microbadger.com/badges/image/myterminal/ample-emacs.svg)](https://microbadger.com/images/myterminal/ample-emacs)  
[![License](https://img.shields.io/badge/LICENSE-GPL%20v3.0-blue.svg)](https://www.gnu.org/licenses/gpl.html)
[![Join the chat at https://gitter.im/myTerminal/ample-emacs](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/myTerminal/ample-emacs?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

'Just enough' Emacs configuration with minimal external packages

## Setup

*ample-emacs* can be used in two ways.

### GitHub

Getting it from GitHub is easier of the two methods. You just need to clone the repository on your local workspace like:

    git clone https://github.com/myTerminal/ample-emacs.git

Then the only next step would be to make sure that [.emacs.d](.emacs.d) is at the root of your home directory.

You can either place it there manually or otherwise create a soft-link from its location to the home directory.

    ln -s </path/to/cloned/project>/ample-emacs/.emacs.d ~/.emacs.d

A clear advantage of the above method would be that you can pull updates from upstream with almost no effort.

Once done, start Emacs and get running within seconds.

#### XDG support in Emacs 27+

Emacs 27 [comes with XDG support](https://git.savannah.gnu.org/cgit/emacs.git/commit/?id=4118297ae2fab4886b20d193ba511a229637aea3) and hence will also work with `~/.config/emacs`. To be able to use *ample-emacs* that way (which may as well be the only way soon), you can link it in the following way:

    ln -s </path/to/cloned/project>/ample-emacs/.emacs.d ~/.config/emacs

### Docker Hub

*ample-emacs* is also available on Docker. To start it, run a command that looks like:

    docker pull myterminal/ample-emacs

## Features

### Highlights

- Minimal interface with almost everything except the window turned off
- The dark [wombat theme](https://github.com/jasonblewis/color-theme-wombat) applied by default, with a readable font-size
- *ido-mode* enabled to save you precious key-strokes at many places
- Navigation through buffers simplified with [winner](http://emacswiki.org/emacs/WinnerMode) and [windmove](http://emacswiki.org/emacs/WindMove).
- No more welcome screen, Emacs starts up to greet you and shows the date
- Only a few included standalone packages, with no dependency on external package archives
- Reload file in a buffer quickly with `<f5>`
- Some more configuration to improve usability
- Adaptive behavior between graphical and non-graphical mode

### Pre-configured packages

*ample-emacs* is designed to be minimalistic and hence just comes with the below pre-configured packages.

- [multiple-cursors](https://github.com/magnars/multiple-cursors.el) to allow spawning of multiple cursors to editing text that follows a particular pattern
- [which-key](https://github.com/justbur/emacs-which-key) to provide instant help around key-bindings as you press keys
- [ivy](https://github.com/abo-abo/swiper) (along with counsel and swiper) to make your experience with Emacs better

### Added key-bindings over stock Emacs

Refer [basic/key-bindings.el](.emacs.d/modes/basic/key-bindings.el) and [standard/key-bindings.el](.emacs.d/modes/standard/key-bindings.el) for all the pre-configured key-bindings for your convenience.

## Customizing

Not everyone has the same setup and that means that you can (and may) change the configuration files according to your need. However, if you plan to clone this project, use it for your Emacs through a soft-link and pull updates from upstream regularly, there's a high probability that future improvements may end up resulting in merge conflicts on your local workspace. To solve this problem (and according to a suggestion from [@ericllazarus](https://github.com/ericllazarus)), *ample-emacs* has been redesigned in a way that it now enables the user to extend their configuration without causing conflicts with future updates. One recommended way of extending *ample-emacs* is described below.

All configuration files under [.emacs.d/modes/basic](.emacs.d/modes/basic) and [.emacs.d/modes/standard](.emacs.d/modes/standard) can be extended through contents in their neigboring `*-custom.el` file. For example, if you plan to extend the file [basic/packages.el](.emacs.d/modes/basic/packages.el), you can place your personal configuration in the file [basic/packages-custom.el](.emacs.d/modes/basic/packages-custom.el). *ample-emacs* will load the files in the right order so that your custom configurations will override the ones from *ample-emacs*. This way, whenever there's an update to the original file, there will be no merge conflicts and life would be so much simpler!

## More

If you're looking for a configuration with super-powers, try [super-emacs](https://github.com/myTerminal/super-emacs).
