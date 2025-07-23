(use-modules (gnu home)
             (gnu home services)
             (gnu home services shells)
             (gnu home services dotfiles)
             (gnu services)
             (gnu packages admin)
             (gnu packages terminals)
             (gnu packages shells)
             (gnu packages shellutils)
             (gnu packages wm)
             (gnu packages xdisorg)
             (gnu packages fonts)
             (fruix fonts)
             (guix gexp))

(home-environment
 (packages (list bpytop waybar kitty starship fuzzel
                 font-awesome font-google-noto font-google-noto-emoji font-google-noto-sans-cjk font-google-noto-serif-cjk font-monofur))
 (services
  (append (list
           (service home-zsh-service-type
                    (home-zsh-configuration
                     (zshrc (list (plain-file "zshrc"
                                              "eval \"$(starship init zsh)\"")))))
           (service home-dotfiles-service-type
                    (home-dotfiles-configuration
                     (directories '("."))
                     (layout 'stow)
                     (excluded '("\\.git" "\\.gitignore" "config.scm")))))
          %base-home-services)))
