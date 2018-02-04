# MeowMeowFish website

Our project demo website for Fishackathon Taipei 2018

Website screenshot:
![](https://imgur.com/oXgDuKJ.png)

Built using Ruby on Rails.

Ruby version: **2.4.1**

Rails version: **5.1.4**

## What this website does:

Our main purpose is to solve **IUU(Illegal, unreported and unregulated) Fishing** problems.

We'll place several devices into the ocean to detect unusual activities.

And this website is administration page, displaying devices status and condigure devices.

## Devices data upload API:

I have implement a simple API for devices to upload data.

### To register new device

Send a GET http request to the following URL:
```
http://384ebc1b.ngrok.io/gmaps/api/create/<device-id>/<latitude>/<longitude>/<detecting-status>
```
or this:
```
http://384ebc1b.ngrok.io/gmaps/api/create?index=<device-id>&lat=<latitude>&lon=<longitude>&status=<detecting-status>
```

### To update device data

Send a GET http request to the following URL:
```
http://384ebc1b.ngrok.io/gmaps/api/update/<device-id>/<latitude>/<longitude>/<detecting-status>
```
or this:
```
http://384ebc1b.ngrok.io/gmaps/api/update?index=<device-id>&lat=<latitude>&lon=<longitude>&status=<detecting-status>
```

## To start this rails server:

### Install Ruby

Install RVM
```
\curl -sSL https://get.rvm.io | bash -s stable
```

Install Ruby by RVM
```
rvm install 2.4.1
rvm --default use 2.4.1
```

### Clone this repository
```
git clone https://github.com/meowmeowfish/meowmeowfish-web
cd meowmewofish-web/
```

### Install rails and necessary gems
```
bundle install
```

### Start rails server
```
rails s
```

### Let others can connect to your local server using Ngrok (optional)

Download ngork from https://ngrok.com/download.

then start ngork:
```
./ngork http 3000
```

It should print a URL on your terminal, looks like this: http://384ebc1b.ngrok.io/

Then others can connect to your server by that URL.

