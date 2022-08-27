#!/usr/bin/env fish

function _abbreviations_install --on-event abbreviations_install
    # https://github.com/ogham/exa
    abbr --add ls 'exa --icons --git'
    abbr --add l 'exa --icons --git'
    abbr --add ll 'exa --icons --git -lb'
    abbr --add la 'exa --icons --git -ab'
    abbr --add lla 'exa --icons --git -ablg'
    abbr --add lsd 'exa --icons --git -bD'

    # https://github.com/zyedidia/micro
    abbr --add m micro

    # https://github.com/jesseduffield/lazydocker
    abbr --add lzd lazydocker

    # https://github.com/BurntSushi/ripgrep
    abbr --add grep rg

    # https://github.com/sharkdp/bat
    # https://github.com/eth-p/bat-extras/blob/master/README.md#scripts=
    abbr --add b bat
    abbr --add brg batgrep
    abbr --add man batman
    abbr --add blog 'bat --paging=never -l log'
    abbr --add bdiff batdiff
    abbr --add bhelp 'bat --plain --language=cmd-help'

    # custom 
    abbr --add rld 'exec fish'
    abbr --add mkdir 'mkdir -p'

    # sudo
    abbr --add sudoe 'sudo env "PATH=$PATH"'

    # https://github.com/aristocratos/btop
    abbr --add htop btop

    # https://github.com/denisidoro/navi
    abbr --add ncht 'navi --cheatsh'

    # https://github.com/chubin/cheat.sh
    abbr --add cht 'cht.sh'

    # https://github.com/ducaale/xh
    abbr --add http xh
    abbr --add https xhs

    # Docker cli
    abbr --add dk docker
    abbr --add dkei 'docker exec'
    abbr --add dkei 'docker exec -it'

    abbr --add dkl 'docker logs'
    abbr --add dklf 'docker logs -f'

    abbr --add dkps 'docker ps'
    abbr --add dkpsa 'docker ps -a'

    abbr --add dkr 'docker run'
    abbr --add dkri 'docker run -it --rm'
    abbr --add dkrie 'docker run -it --rm --entrypoint /bin/bash'

    abbr --add dkin 'docker inspect'
    abbr --add dkss 'docker stats'
    abbr --add dkt 'docker tag'
    abbr --add dkx 'docker stop'

    ## Image (i)
    abbr --add dki 'docker image'
    abbr --add dkils 'docker image ls'
    abbr --add dkipr 'docker image prune'
    abbr --add dkirm 'docker image rm'
    abbr --add dkit 'docker image tag'

    ## Volume (v)
    abbr --add dkv 'docker volume'
    abbr --add dkvin 'docker volume inspect'
    abbr --add dkvls 'docker volume ls'
    abbr --add dkvpr 'docker volume prune'
    abbr --add dkvrm 'docker volume rm'

    ## Network (n)
    abbr --add dkn 'docker network'
    abbr --add dknin 'docker network inspect'
    abbr --add dknls 'docker network ls'
    abbr --add dknpr 'docker network prune'
    abbr --add dknrm 'docker network rm'

    ## System (s)
    abbr --add dks 'docker system'
    abbr --add dksdf 'docker system df'
    abbr --add dkspr 'docker system prune'

    # Clean up dangling volumes
    abbr --add dkrmV 'docker volume rm (docker volume ls -qf dangling=true)'

    # Clean up exited containers
    abbr --add dkrmC 'docker rm (docker ps -qaf status=exited)'

    # Clean up dangling images
    abbr --add dkrmI 'docker rmi (docker images -qf dangling=true)'

    # Docker Compose (c)
    abbr --add dkc 'docker compose'
    abbr --add dkcb 'docker compose build'
    abbr --add dkcd 'docker compose down'
    abbr --add dkce 'docker compose exec'
    abbr --add dkck 'docker compose kill'
    abbr --add dkcl 'docker compose logs'
    abbr --add dkclf 'docker compose logs -f'
    abbr --add dkcps 'docker compose ps'
    abbr --add dkcpl 'docker compose pull'
    abbr --add dkcph 'docker compose push'
    abbr --add dkcr 'docker compose run'
    abbr --add dkcR 'docker compose run --rm'
    abbr --add dkcrm 'docker compose rm'
    abbr --add dkcs 'docker compose start'
    abbr --add dkcS 'docker compose restart'
    abbr --add dkcu 'docker compose up'
    abbr --add dkcud 'docker compose up -d'
    abbr --add dkcx 'docker compose stop'

end


function _abbreviations_uninstall --on-event abbreviations_uninstall
    # https://github.com/ogham/exa
    abbr -e ls
    abbr -e l
    abbr -e ll
    abbr -e la
    abbr -e lla
    abbr -e lsd

    # https://github.com/zyedidia/micro
    abbr -e m

    # https://github.com/jesseduffield/lazydocker
    abbr -e lzd

    # https://github.com/BurntSushi/ripgrep
    abbr -e grep

    # https://github.com/sharkdp/bat
    # https://github.com/eth-p/bat-extras/blob/master/README.md#scripts=
    abbr -e b
    abbr -e brg
    abbr -e man
    abbr -e blog
    abbr -e bdiff
    abbr -e bhelp

    # custom 
    abbr -e rld
    abbr -e mkdir

    # sudo
    abbr -e sudoe

    # https://github.com/aristocratos/btop
    abbr -e htop

    # https://github.com/denisidoro/navi
    abbr -e ncht

    # https://github.com/chubin/cheat.sh
    abbr -e cht

    # https://github.com/ducaale/xh
    abbr -e http
    abbr -e https

    # Docker cli
    abbr -e dk
    abbr -e dkei
    abbr -e dkei

    abbr -e dkl
    abbr -e dklf

    abbr -e dkps
    abbr -e dkpsa

    abbr -e dkr
    abbr -e dkri
    abbr -e dkrie

    abbr -e dkin
    abbr -e dkss
    abbr -e dkt
    abbr -e dkx

    ## Image (i)
    abbr -e dki
    abbr -e dkils
    abbr -e dkipr
    abbr -e dkirm
    abbr -e dkit

    ## Volume (v)
    abbr -e dkv
    abbr -e dkvin
    abbr -e dkvls
    abbr -e dkvpr
    abbr -e dkvrm

    ## Network (n)
    abbr -e dkn
    abbr -e dknin
    abbr -e dknls
    abbr -e dknpr
    abbr -e dknrm

    ## System (s)
    abbr -e dks
    abbr -e dksdf
    abbr -e dkspr

    # Clean up dangling volumes
    abbr -e dkrmV

    # Clean up exited containers
    abbr -e dkrmC

    # Clean up dangling images
    abbr -e dkrmI

    # Docker Compose (c)
    abbr -e dkc
    abbr -e dkcb
    abbr -e dkcd
    abbr -e dkce
    abbr -e dkck
    abbr -e dkcl
    abbr -e dkclf
    abbr -e dkcps
    abbr -e dkcpl
    abbr -e dkcph
    abbr -e dkcr
    abbr -e dkcR
    abbr -e dkcrm
    abbr -e dkcs
    abbr -e dkcS
    abbr -e dkcu
    abbr -e dkcud
    abbr -e dkcx
end
