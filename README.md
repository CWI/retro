# Retro

Simple app to manage retrospective meetings.

#

[![Build Status](https://travis-ci.org/CWI/retro.png?branch=master)](https://travis-ci.org/CWI/retro)
[![Code Climate](https://codeclimate.com/github/CWI/retro.png)](https://codeclimate.com/github/CWI/retro)

Setup
------------

1. Install MySQL

  1.1. For Mac OSX users:

    `brew install mysql`
    
  1.2. For Linux users:

    `sudo apt-get install libmysql-ruby libmysqlclient-dev`
    
2. Create and start MySQL socket:

  `mysqld stop`
  
  `touch /tmp/mysql.sock`
  
  `mysqld_safe restart`
  
  `mysql.server start`
  
3. After [forking](https://github.com/CWI/retro/fork), prepare project's gems and databases:

  `sh bootstrap.sh`

Screenshots
------------

See how it works using looking at the screenshots below:

![ScreenShot](https://raw.github.com/zekitow/retro/master/ss/Fosformol_1.png)

![ScreenShot](https://raw.github.com/zekitow/retro/master/ss/Fosformol_2.png)

![ScreenShot](https://raw.github.com/zekitow/retro/master/ss/Fosformol_3.png)

![ScreenShot](https://raw.github.com/zekitow/retro/master/ss/Fosformol_4.png)

![ScreenShot](https://raw.github.com/zekitow/retro/master/ss/Fosformol_5.png)

![ScreenShot](https://raw.github.com/zekitow/retro/master/ss/Fosformol_6.png)


