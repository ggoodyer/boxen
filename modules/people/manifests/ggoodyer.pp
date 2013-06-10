class people::ggoodyer {

  #osx::recovery_message { 'If this Mac is found, please call lews.telamon@me.com': } 

  # automatically hide the dock
  include osx::dock::autohide
  # ensures the dock only contains apps that are running
  include osx::dock::clear_dock
  # dims icons of hidden apps
  include osx::dock::dim_hidden_apps

  # unsets the hidden flag on ~/Library
  include osx::finder::unhide_library
 
  include osx::finder::empty_trash_securely
  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library
  include osx::global::expand_save_dialog
  include osx::global::expand_print_dialog
  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access

  
  # disable creation of .DS_Store files on network shares
  include osx::no_network_dsstores

  # enables zoom by scrolling while holding Control
  include osx::universal_access::ctrl_mod_zoom
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
