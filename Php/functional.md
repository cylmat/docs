# Functional

- Crypto, date, files, generator, iconv, inlt, iterator, stream
- Form: Post, Request, Server
- Misc: cache, regexp, error handler, sqlite
- Net: cookies, curl, dns, headers
- Spl: data structures, exceptions, iterators, arrayobject
- Web: OAuth, SimpleXML, Soap, Sockets, Xml-Rpc
- Pack/Unpack, Yield, Reflexion, utf8

Samples
---
session locking  
ob_get_level() nested  
ob_implicit_flush() for stream  
pure function (no side effect)  
strtotime()  
json_last_error_msg()  
SoapClient(wsdl)  
Domdocument (domxpath&simplexml)  
File+Stream  
utf8  
... 

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
