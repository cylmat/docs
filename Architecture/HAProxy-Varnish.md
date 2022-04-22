# Server

Varnish servers
---
```
                    -------- | Nginx #1
                  /          |
        + HAProxy - Cache #1 | 
Client {          - Cache #2 | Nginx #2
        + HAProxy - Cache #3 |
                  \          |
                    -------- | Nginx #3
```
![Varnish](https://miro.medium.com/max/914/1*zd-txiknFA6IqUN_cYgHug.png)

---
**@ref:**  
- https://z0z0.me/create-your-own-cdn-with-haproxy-and-varnish/
- https://serverfault.com/questions/204025/ordering-1-nginx-2-varnish-3-haproxy-4-webserver
- https://www.haproxy.com/fr/blog/haproxy-varnish-and-the-single-hostname-website/
- https://stackoverflow.com/questions/15448196/haproxy-in-front-of-varnish-or-the-other-way-round
- https://medium.com/@sudhindrasajjal/load-balancing-your-web-application-with-haproxy-varnish-3456a3e5a171
