# shell-really-say

Shellsay but it can really talk

![screenshot](https://cdn.discordapp.com/attachments/648963701734506500/919855134274646037/Screen_Shot_2564-12-13_at_14.35.10.png)


# Requirements

[Cargo(Rust)](https://rust-lang.org)

[Git](https://git-scm.com)

Make

# Make

## Make isn't built in on windows and mac

### To install make on windows

```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install make
```

### To install make on mac

`xcode-select --install`

# Installation

```
git clone https://github.com/ForesterBlox/shell-really-say.git
cd shell-really-say
make
```

### To uninstall do

`make clean`

# Credits

Gon : Main developer

Premier : Tester(victim)
