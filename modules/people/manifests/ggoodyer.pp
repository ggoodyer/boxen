class people::ggoodyer {

  #osx::recovery_message { 'If this Mac is found, please call lews.telamon@me.com': } 

  include java
  include zsh
  include dpkg
  include imagemagick
  include wkhtmltopdf
  include virtualbox
  include wget
  include firefox
  include crashplan
  include alfred
  include chrome
  include skype
  include dropbox
  include github_for_mac
  include vlc
  include fluid
  include evernote
  include adamvim
  
  #ideaIC-130.1486.dmg
  class { 'intellij':
    edition => 'community',
    version => '130.1486'
  }



  ################################################
  # DOCK SETTINGS
  ################################################
 
  # Use the old flat dock style
  include osx::dock::2d
  # Automatically hide the dock
  include osx::dock::autohide
  # Ensures the dock only contains apps that are running
  include osx::dock::clear_dock
  # Dims icons of hidden apps
  include osx::dock::dim_hidden_apps

  # The size of the dock icons, in pixels
  # include osx::dock::icon_size

  class { 'osx::dock::icon_size': 
    size => 36
  }

  ################################################
  # FINDER SETTINGS
  ################################################
  
  # Unsets the hidden flag on ~/Library
  include osx::finder::unhide_library
  include osx::finder::empty_trash_securely
  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library
  
  ################################################
  # GLOBAL SETTINGS
  ################################################
  
  include osx::global::expand_save_dialog
  include osx::global::expand_print_dialog
  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access

  ################################################
  # OTHER SETTINGS
  ################################################
  
  # Disable creation of .DS_Store files on network shares
  include osx::no_network_dsstores
  # Enables zoom by scrolling while holding Control
  include osx::universal_access::ctrl_mod_zoom
  # Disable the downloaded app quarantine
  include osx::disable_app_quarantine
}

#class people::jbarnette {
#  include emacs   # requires emacs module in Puppetfile
#  include sparrow # requires sparrow module in Puppetfile

#  $home     = "/Users/${::luser}"
#  $my       = "${home}/my"
#  $dotfiles = "${my}/dotfiles"

#  repository { $dotfiles:
#    source  => 'jbarnette/dotfiles',
#    require => File[$my]
#  }
#}
