puppet-solka
============

Random puppet files that I am using across projects.

Available Classes
=================

**solka::apt** - The default ubuntu sources is crazy slow on my network. Used netselect to find the fastest mirror.
This class installs that mirror and runs apt-get update. Dramaticlly reduced my vagrant up time.  

**solka::javadev** - Installs various java build systems (mvn,ant,gradle) and sets jdk7 as the default java(c).  

**solka::bootstrap** - Installs curl and vim. Why ubuntu doesn't ship with these is beyond me.  