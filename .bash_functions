#!/bin/bash

gitgraph() {
git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset) %C(dim white)- %an%C(reset)" --all

: '
* ca425d6 - Thu, 25 Feb 2016 21:40:28 -0800 (5 months ago) (HEAD -> develop, origin/develop, origin/HEAD)
|  Bump version, update contributors list - Jeremy Felt
*   8dfffb4 - Thu, 25 Feb 2016 21:31:48 -0800 (5 months ago)
|\   Merge pull request #813 from tucsonlabs/chore/update-optimize-power-parallels-provider-flag - Jeremy Felt
| * fb9f5e3 - Tue, 19 Jan 2016 04:37:17 -0800 (6 months ago)
| |  update deprecated parallels.optimize_power_consumption = false - Erik Trom
* | d170f3f - Sun, 21 Feb 2016 11:46:00 -0800 (5 months ago)
| |  Adjust heading for Bug fixes and enhancements - Jeremy Felt
| | * 9226f5b - Sun, 21 Feb 2016 11:46:00 -0800 (5 months ago) (tag: 1.3.0, origin/master)
| | |  Adjust heading for Bug fixes and enhancements - Jeremy Felt
| | *   2e9eec5 - Sun, 21 Feb 2016 11:42:54 -0800 (5 months ago)
| | |\   Merge branch ''develop'' - Jeremy Felt
| |_|/  
|/| |   
* | |   ba6058b - Sun, 21 Feb 2016 10:52:28 -0800 (5 months ago)
|\ \ \   Merge pull request #832 from Varying-Vagrant-Vagrants/update-docs - Jeremy Felt
| * | | 99d2772 - Sun, 21 Feb 2016 10:36:17 -0800 (5 months ago)
| | | |  Update release date for 1.3.0 - Jeremy Felt
'
}

# create alias download

# download https://source-domain.com/file folder/file

download() {
    if [ `which curl` ]; then
        curl -s "$1" > "$2";
    elif [ `which wget` ]; then
        wget -nv -O "$2" "$1"
    fi
}

