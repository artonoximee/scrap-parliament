# scrap parliament

### 1. purpose
This repository contains a Ruby app that can scrap the emails and names of all the representatives from the French Parliament (Senators and Deputies). It outputs its results in two different CSV files.

### 2. how to use

#### a. prerequisites
To use this app, you should be running Mac or Linux. The following instructions are for Mac users.

#### b. introduction to the terminal
In order to open your terminal, press cmd + spacebar and type 'terminal'
The terminal is a non graphical interface that permits you to make actions on your computer.

#### c. installing ruby

sudo gem install bundler

cd Downloads/scrap_parliament-master

bundle install

cd lib

ruby scrap_deputies.rb