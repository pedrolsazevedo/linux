# Proxy Configuration
## Environment Variables

#### User variables
1. Open the `.bashrc` file to edit
```bash
vim .bashrc
```  

2. Add the following the following variables (I usually put in the end of the file)
```
export HTTP_PROXY="http://user:password@proxy.server:port/"
export http_proxy="http://user:password@proxy.server:port/"
export HTTPS_PROXY="http://user:password@proxy.server:port/"
export https_proxy="http://user:password@proxy.server:port/"
export ftp_proxy="http://user:password@proxy.server:port/"
export HTTP_PROXY_REQUEST_FULLURI=0
export HTTPS_PROXY_REQUEST_FULLURI=0
```
3. Restart the terminal session

#### APT Proxy

1. Open the **`/etc/apt/apt.conf.d/proxy.conf`** file to edit
```bash
sudo vim /etc/apt/apt.conf.d/proxy.conf
```

2. Add the following text (Choose a or b way):  
a)
```
Acquire::http::Proxy "http://user:password@proxy.server:port/";
Acquire::https::Proxy "http://user:password@proxy.server:port/";
```

  b)
```
Acquire {
  HTTP::proxy "http://user:password@proxy.server:port/";
  HTTPS::proxy "http://user:password@proxy.server:port/";
}
```

#### WGET
1. Open the **`/etc/wgetrc`** file to edit
```bash
sudo vim /etc/wgetrc
```

2. Uncomment and add the proxy URL:PORT
```
https_proxy = http://user:password@proxy.server:port/
http_proxy = http://user:password@proxy.server:port/
ftp_proxy = http://user:password@proxy.server:port/
use_proxy = on
```

3. You can also change the default IPvX protocol
```
To try ipv6 addresses first:
prefer-family = IPv4
```
