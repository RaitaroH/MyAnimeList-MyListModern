# MyAnimeListModern
![alt tag](https://raw.githubusercontent.com/RaitaroH/MyAnimeList/master/Images/MyList%20-%20DeepDark.png)
My custom modern style for MAL. See bellow the code you need to use.

This is a style inspired by [FT DeepDark](https://addons.mozilla.org/en-US/firefox/addon/ft-deepdark/?src=search).

Also, credit where credit is due for the color palettes and images down bellow. ([@KDE](https://github.com/KDE), [@linuxmint](https://github.com/linuxmint))

<b>MODERN STYLE ONLY!</b>

My list [here](https://myanimelist.net/animelist/RaitaroHikami).

# Screenshots
![alt tag](https://raw.githubusercontent.com/RaitaroH/MyAnimeList-MyListModern/master/Images/DeepDark.png)
![alt tag](https://raw.githubusercontent.com/RaitaroH/MyAnimeList-MyListModern/master/Images/BreezeDark.png)

# Installation
Use the following import:
```
@import "https://rawgit.com/RaitaroH/MyAnimeList-MyListModern/master/MAL_modern.css";
@import "https://rawgit.com/RaitaroH/MyAnimeList-MyListModern/master/Titles.css";
@import "https://malcat-gen.appspot.com/series?preset=dataimagelinkbefore";
#copyright{visibility: visible;}
```

Titles.css is for anime recomandations. The titles of said anime will be colored.

# Automatically add entries to Titles.css
Firstly clone the repo. Then change the links under installation with your links. After that make sure you can push to git. Now you can finally have a script in your ~/bin/ like the following:
```
#!/bin/bash
cd ~/Repos/MyAnimeList-MyListModern/

echo "Adding the needed name and id from link $1"
./mal.sh $1

echo "Adding files."
git add .

echo "Adding commit name $2"
git commit -m "$2"

echo "Now pushing. Please insert password."
git push origin master
```
Example usage:

```
mal.sh https://myanimelist.net/anime/35849/Darling_in_the_FranXX added_franxx
```

[Here](https://github.com/RaitaroH/MyAnimeList-MyListModern/commit/577e107e771bf2aaa077ac158075b3e6ffa2c71d) is the actual commit example.

# Customization - no import
If you want custom colors you will have to change the code first. The banner cannot be changed in the code, you will have to upload the image. Here are a couple of examples:

KDE's breeze dark example:
```
--main-color: rgba(61, 174, 233, 1) !important;
--main-background: rgba(35, 38, 41, .7) !important;
--second-background: rgba(42, 46, 50, .7) !important;
--hover-background: rgba(49, 54, 59, .8) !important;
--main-text: rgba(239, 240, 241, 1) !important;
--dimer-text: rgba(239, 240, 241, .7) !important;
--highlight: rgba(61, 174, 233, .4) !important;
/*Images*/
--wallpaper: url("https://raw.githubusercontent.com/RaitaroH/MyAnimeList/master/Images/KDE_Wallpaper.png");
--banner: url("https://raw.githubusercontent.com/RaitaroH/MyAnimeList/master/Images/KDE_Banner.png");
```
![alt-tag](https://raw.githubusercontent.com/RaitaroH/MyAnimeList-MyListModern/master/Images/Breeze.png)

Mint-Y-Dark example:
```
--main-color: rgba(154, 184, 124, 1) !important;
--main-background: rgba(47, 47, 47, .7) !important;
--second-background: rgba(56, 56, 56, .7) !important;
--hover-background: rgba(64, 64, 64, .8) !important;
--main-text: rgba(255, 255, 255, 1) !important;
--dimer-text: rgba(255, 255, 255, .7) !important;
--highlight: rgba(154, 184, 124, .4) !important;
/*Images*/
--wallpaper: url("https://raw.githubusercontent.com/RaitaroH/MyAnimeList/master/Images/LM_Wallpaper2.png");
--banner: url("https://raw.githubusercontent.com/RaitaroH/MyAnimeList/master/Images/LM_Banner.png");
```
![alt-tag](https://raw.githubusercontent.com/RaitaroH/MyAnimeList-MyListModern/master/Images/Mint.png)
