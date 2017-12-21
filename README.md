buku-recipe
===========

This is the recipe to install [Buku](https://github.com/jarun/Buku) and the following :

  - **[Bukubrow](https://github.com/SamHH/bukubrow)** : a web extension for **Firefox** and **Chrome** to query the buku database from the browser
  - **[buku_run](https://github.com/carnager/buku_run)** : a rofi frontend to buku

The buku database is an **sqlite** file that is **symlinked** to a dropbox space.

## Usage

- **Buku** can be run in the terminal with `$ buku`
- **buku_run** can be launched from the terminal with `$ buku_run`

## Dependencies

- **[dropbox-recipe]()** : A recipe that installs the nautilus dropbox extension, turning `~/Dropbox` into a synced repository

## Installation

- :one: Run the install script `$ make install`
- :two: Install the extensions in the browsers
    * [Firefox](https://chrome.google.com/webstore/detail/bukubrow/ghhttps://chrome.google.com/webstore/detail/bukubrow/ghniladkapjacfajiooekgkfopkjblpnniladkapjacfajiooekgkfop)
    * [Chrome](https://addons.mozilla.org/en-US/firefox/addon/bukubrow/)


