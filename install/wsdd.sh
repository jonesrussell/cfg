: 1595313448:0;c
: 1595313712:0;cd /tmp
: 1595313716:0;wget https://github.com/christgau/wsdd/archive/master.zip
: 1595313719:0;unzip master.zip
: 1595313723:0;sudo mv wsdd-master/src/wsdd.py wsdd-master/src/wsdd
: 1595313733:0;sudo cp wsdd-master/src/wsdd /usr/bin
: 1595313742:0;sudo cp wsdd-master/etc/systemd/wsdd.service /etc/systemd/system
: 1595313751:0;sudo nano /etc/systemd/system/wsdd.service
: 1595313823:0;sudo systemctl daemon-reload
: 1595313830:0;sudo systemctl start wsdd
: 1595313836:0;sudo systemctl enable wsdd
: 1595313845:0;sudo service wsdd status
: 1595313885:0;cd
: 1595313909:0;tail -n 15 .zsh_history
: 1595313938:0;tail -n 15 .zsh_history>.local/share/home-directory/install/wsdd.sh
