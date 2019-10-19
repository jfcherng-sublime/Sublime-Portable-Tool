# Sublime Text/Merge Portable Tool

<a href="https://ci.appveyor.com/project/jfcherng/sublime-portable-tool"><img alt="AppVeyor branch" src="https://img.shields.io/appveyor/ci/jfcherng/Sublime-Portable-Tool/master?style=flat-square&logo=appveyor"></a>
<a href="https://github.com/jfcherng/Sublime-Text-Portable-Tool/releases"><img alt="GitHub All Releases" src="https://img.shields.io/github/downloads/jfcherng/Sublime-Text-Portable-Tool/total?style=flat-square&logo=github"></a>
<a href="https://github.com/jfcherng/Sublime-Text-Portable-Tool/tags"><img alt="GitHub tag (latest SemVer)" src="https://img.shields.io/github/tag/jfcherng/Sublime-Text-Portable-Tool?style=flat-square&logo=github"></a>
<a href="https://github.com/jfcherng/Sublime-Text-Portable-Tool/blob/master/LICENSE"><img alt="Project license" src="https://img.shields.io/github/license/jfcherng/Sublime-Text-Portable-Tool?style=flat-square&logo=github"></a>
<a href="https://github.com/jfcherng/Sublime-Text-Portable-Tool/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/jfcherng/Sublime-Text-Portable-Tool?style=flat-square&logo=github"></a>
<a href="https://www.paypal.me/jfcherng/5usd" title="Donate to this project using Paypal"><img src="https://img.shields.io/badge/paypal-donate-blue.svg?style=flat-square&logo=paypal" /></a>

This tool is developed to manage the context menu, file icons,
file associations for Sublime Text/Merge under Windows.

It also allows you to replace your `notepad.exe` with Sublime Text.
To do it, you need to have `Microsoft Visual C++ 2010 Redistributable` installed on your PC.

![screenshot](https://raw.githubusercontent.com/jfcherng/Sublime-Text-Portable-Tool/gh-pages/images/interface.png)


## Usage

Take `Sublime-Text-Portable-Tool.exe` as the example.
For `Sublime-Merge-Portable-Tool.exe`, steps are quite the same.

1. Put `Sublime-Text-Portable-Tool.exe` along with the `sublime_text.exe`,
   whose default location is under `C:\Program Files\Sublime Text 3`.
1. Execute `Sublime-Text-Portable-Tool.exe`.
1. Just enter the number for what you want to do as listed in the menu.


## Demo

- [Open a file with Sublime Text](https://raw.githubusercontent.com/jfcherng/Sublime-Text-Portable-Tool/gh-pages/images/file.png)
- [Open a directory with Sublime Text/Merge](https://raw.githubusercontent.com/jfcherng/Sublime-Text-Portable-Tool/gh-pages/images/dir.png)
- [Change the icon of the executable](https://raw.githubusercontent.com/jfcherng/Sublime-Text-Portable-Tool/gh-pages/images/change_exe_icon.png)
- [Set file associations and change file icons](https://raw.githubusercontent.com/jfcherng/Sublime-Text-Portable-Tool/gh-pages/images/change_file_icon.png)


## Compilation

There are some places to get compiled binaries:

1. Auto builds for the current master branch from
   [AppVeyor](https://ci.appveyor.com/project/jfcherng/sublime-portable-tool/build/artifacts).
1. Stable builds from the GitHub's
   [Releases](https://github.com/jfcherng/Sublime-Portable-Tool/releases) page.

But if you want to build them by yourself, you can follow instructions below.

To compile this project, you need the following things.

- [Bat To Exe Converter](http://www.f2ko.de/en/b2e.php) (Freeware)
- [electron/rcedit](https://github.com/electron/rcedit) (MIT license)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (Unlicense license)
- [Sublime-Notepad-Replacement](https://github.com/grumpydev/Sublime-Notepad-Replacement) (No license)

To compile, just run

- `Compile-Sublime-Text-Portable-Tool.bat`
- `Compile-Sublime-Merge-Portable-Tool.bat`


## Acknowledgment

This project is forked from [LOO2K](https://github.com/loo2k/Sublime-Text-Portable-Tool)
with several functionalities added.
