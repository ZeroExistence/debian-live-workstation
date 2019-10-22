# Enable i3 in mate
dconf write /org/mate/desktop/session/required-components/windowmanager "'i3'";
dconf write /org/mate/desktop/background/show-desktop-icons "false";
dconf write /org/mate/desktop/media-handling/automount "false";
dconf write /org/mate/desktop/media-handling/automount-open "false";
dconf write /org/mate/desktop/media-handling/autorun-never "true";
