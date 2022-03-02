# Optimisation

php.ini
---
- memory_limit++
- memory_get_peak_usage()
- realpath_cache_size()

zend opcache
---
    memory_consumption+
    interned_string_buffer+
    max_accelerated_files++
    validate_timestamp 1
    revalidate_freq 0
    fast_shutdown 1


fpm pool.d
---
    pm.max_children=50
    pm.start_servers=3
    min_spare_servers=2
    max_request=1000
    slow=/path/to/slowlog.log
    request_slowlog_timeout=5s

---
**@ref** 
- https://github.com/psecio/iniscan
- https://httpd.apache.org/docs/2.4/programs/ab.html
- https://www.php.net/manual/fr/ref.info.php


# Security

Sample
---
    L’injection SQL
    CSRF
    Cross Side Scripting (XSS)
    Session et Cookie Hacking
    Directory / Path Traversal
    Code injection
Path Traversal and Application Denial of Service

Php
---
expose_php = off  
X-Powered-By

Apache
---
"/etc/apache2/conf.d/security"  
"ServerTokens "OS": "Prod"
