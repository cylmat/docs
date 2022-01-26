# Functional

- Misc: cache, regexp 
- Net: cookies, curl, date/time, dns, files, form request, headers, 0MQ
- Web: OAuth, (DomDoc) SimpleXML, Soap, Sockets, Xml-Rpc  
+ Functional: closure->bindTo, error handler, generator, (un)pack, reflexion, 
  - regexp, ticks, thread (shell_exec), utf8, yield

### Compression, Crypto
- BCMath, GMP
- Hash, MCrypt, OpenSSL, Sodium
- Phar, Zip

### Language
- Gettext, Iconv, Intl, MbString

### Process
- Eio, PcNtl, Posix, Parallele, pThread, Sync

### Others ext
- Data Structures (Hash, Sequence, Vector...)
- FANN neural network
- Json, Lua, Url (encode), Stream (zip://), V8js, Yaml
- Spl: Arrayobject, Data structures, exceptions, iterators
- Swoole

Syntaxic
---
[, $b, $c, 'd' => $d] = $array   
foreach ($array as ['id' => $id, 'name' => $name])     
variadic_func( ...$a )  
[$a[2],$a[3]] = [$a[3],$a[2]];   
preg_replace_callback   

Tips
--- 
**text as callback name:**      
array_map('intval', preg_split('/ /', $arr_temp, -1, PREG_SPLIT_NO_EMPTY)); 

**%[^<char>] Get an input -sscanf- without limits until <char>**  
sscanf("3 5 9 11 109 8\n", "%[^\n]", $arr_temp);  

**declare array in for loop**  
for ($l = array(1,1), $i = 2, $x = 0; $i < $length; $i++)     
