<?php

/**********
* ERROR 
*/

class SimpleApi {
    function readData(string $filter) {
       $reseau->fetchRemote();
    }
    function checkList() {} // ...
}

class TokenAuthApi extends SimpleApi {
    public function readData(int $filterId) {
      if (!$reseau->preAuthentication($filter)) {
          throw new \Exception();
      }
      $reseau->fetchRemote();
    }
    
    public function checkList() {
        return null; // function not used
    }
}

class Client {
    function __construct(SimpleApi $api) {
        $api->readData('/url/'); 
        $list = $api->checkList();
        // other ... 
    }
}

new Client(new SimpleApi()); // ok

new Client(new TokenAuthApi()); 
// Err: on passe un string -> int attendu
// Exception non gérée
// Fonction désactivée, etc...






/******************
 * COVARIANT
 */
class Book {
    function getId() { }
}
class ChildBook extends Book {
    //function getId() { }
    function getAge() {//...
    }
}

class Collection {
    function getBook(string $id): Book {
        return new Book('someone');
    }
}
class ChildBookCollection extends Collection {
    function getBook(string $id): ChildBook {
        return new ChildBook('disney');
    }

    function getAverage(): int {
        /** @var ChildBookCollection $childBooks */
        foreach ($childBooks as $c) {
            /** @var ChildBook $c */
            $c->getAge();
        }
        return 10;
    }
}



class Manager {
    function saveAuthor(Collection $collection): void {
        $book = $collection->getBook(1);
        $book->getId();
        // saving...
    }
}

/// usage

(new Manager())->saveAuthor(new Collection()); // ok
(new Manager())->saveAuthor(new ChildBookCollection()); // ok
//(new ChildManager)->saveChildBooks()




class Database {
    function saveProductByEan(string $ean){}
    function saveProductById(int $id){}
    function saveProductByArray(array $ids){}

}
/*********************
 * Contravariant
 */
class Gestion {
    protected $database = new Database();

    function manage(int|string $idOrEan) {
        $this->database->saveProductByEan($idOrEan);
    }
}

// same
class ChildGestion extends Gestion {
    function manage(int|string $idOrEan) {
        $this->database->saveProductByEan($idOrEan);
        $this->database->saveProductById($idOrEan);
    }
}

// pass
class LSPGestion extends Gestion {
    function manage(int|string|array $idOrEan) {
        $this->database->saveProductByEan($idOrEan);
        $this->database->saveProductByArray($idOrEan);
    }
}

// fail!!!
class OnlyEanGestion extends Gestion {
    function manage(string $ean) {
        $this->database->saveProductByEan($ean);
    }
}


class User {
    function run(Gestion $gestion) {
        $gestion->manage('ean8995'); //string
        $gestion->manage(123454); //int
    }
}

/// usage
(new User)->run(new Gestion()); // ok
(new User)->run(new ChildGestion()); // ok
(new User)->run(new LSPGestion()); // ok

(new User)->run(new OnlyEanGestion()); // fail !!!!!
