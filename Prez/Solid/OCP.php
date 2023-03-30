<?php


class Engine {
    public function run(string $config) {
        if ('straight' == $config) {
            $engine->goStraight();
        }

        if ('turn-over' == $config) {
            $engine->goTurnOver();
        }
    }
}

// use
(new Engine)->run('turn-over'); //ok
(new Engine)->run('new-feature'); // not implemented !



/////////////// plugin

class Feature {
    function use() {}
}

class StraightFeature extends Feature {
    function use() { 'straight'; }
}

class NewFeature extends Feature {
    function use() { 'new-feature'; }
}

class EngineOCP {
    public function run(Feature $feature) {
        $feature->use();
    }
}

// use

(new EngineOCP)->run(new StraightFeature()); //ok
(new EngineOCP)->run(new NewFeature()); // ok !
