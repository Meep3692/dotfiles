(use-modules (gnu home)
             (gnu home services)
             (gnu home services shells)
             (gnu home services dotfiles)
             (gnu services)
             (gnu packages admin)
             (gnu packages wm)
             (gnu packages terminals)
             (gnu packages shells)
             (gnu packages shellutils)
             (guix gexp))

(home-environment
 (packages (list bpytop sway waybar kitty zsh starship))
 (services
  (append (list
           (service home-zsh-service-type
                    (home-zsh-configuration
                     (zshrc (list (plain-file "zshrc"
                                              "eval $(starship init zsh)")))))
           (service home-dotfiles-service-type
                    (home-dotfiles-configuration
                     (directories '("."))
                     (layout 'stow)
                     (excluded '("\\.git" "\\.gitignore" "config.scm")))))
          %base-home-services)))
