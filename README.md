# Scrap parliament

### 1. Purpose
This repository contains a Ruby app that can scrap the emails and names of all the representatives from the French Parliament (Senators and Deputies). It outputs its results in two different CSV files.

### 2. How to use

#### a. Prerequisites
To use this app, you should be running Mac or Linux. The following instructions are for Mac users.

#### b. Introduction to the terminal
In order to open your [terminal](https://en.wikipedia.org/wiki/Terminal_(macOS)), press cmd + spacebar and type 'terminal'.

The terminal is a non graphical interface that permits you to make actions on your computer.

#### c. Installing ruby

Normally, Ruby is installed on every Mac. To check if Ruby is correctly installed, just type the following in your terminal :
```
ruby --version
```
The terminal should return the following (with the xx.xx corresponding to the installed version of Ruby) : 
```
ruby xx.xx
```

If the terminal returns an error, check [this tutorial](https://www.dummies.com/programming/ruby/how-to-install-and-run-ruby-on-mac-os-x/) to correctly install Ruby on Mac.

#### d. Installing bundler

Bundler is a [Ruby Gem](https://en.wikipedia.org/wiki/Ruby_(programming_language)#Repositories_and_libraries) that permits us to install some of the components we will need for our program.

To install Bundler, type the following in your terminal :
```
sudo gem install bundler
```
The terminal is going to ask for your computer password, in order to correctly install the gem.

#### e. Downloading the program

To download the program, click on the green button at the top right of this page that says 'Clone or download'. Click 'Download Zip'.

Unzip the file you just downloaded.

#### f. Accessing the folder from the terminal

The terminal is an interface with which we can navigate in the computer's folders.

To access the Downloads folder, type the following in your terminal ('cd' means 'change directory'):
```
cd Downloads/scrap_parliament-master
```
If your computer is in a different language, try changing 'Downloads' with the name of your Downloads folder (i. e. 'Telechargements' for french users).

Your terminal should now show the name of the folder you're in at the beginning of the line.

#### g. Bundle install

We're going to install the gems we need in order to launch the program.

We're using the Bundler, installed at the d. step of this tutorial.

To do this, type this in your terminal :
```
bundle install
```

#### h. Launching the program

To launch the program, we'll move in the 'lib' directory. To do this, type this in your terminal :
```
cd lib
```

In order to launch the program that scraps names and emails from deputies, type this in the terminal :
```
ruby scrap_deputies.rb
```
To scrap names and emails from senators, type this in the terminal :
```
ruby scrap_senators.rb
```

Each of these commands should print the status of the scraping progress

#### i. Checking the output

When the programs are finished scraping, you can go in the 'db' folder, and check the CSV files that have been generated.

CSV files can be opened in Excel to put them in a proper table. Check [this tutorial](https://support.office.com/en-us/article/Import-or-export-text-txt-or-csv-files-5250ac4c-663c-47ce-937b-339e391393ba) for this action.

### 3. Credits

Brought to you by [MLAV.LAND](http://mlav.land) - Micro Laboratoire pour l'Architecture et la Ville. 2020.

