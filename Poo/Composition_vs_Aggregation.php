<?php

/******************************
 * Composition vs aggregation *
 ******************************
 * 
 * When using UML object association, one can use to link objects:
 * - aggregation, that is a reference to an external object
 *  or 
 * - composition, that is destroyed when the container object is destroyed.
 * 
 * Sometime, a "new object()" is used on composition, breaking Dependency Injection and testability.
 * 
 * Some solutions to this can be using, for exemple:
 * - A factory, to inject into the container object, that can be testable.
 * - To destroy the composition on container object's end.
 * 
 * The use-case sample here will be a university, with
 * - Classrooms (composition) that are a part of university and are destroyed too when it is destroyed.
 * - Students (association) that still exists when university is suppressed.
 */

class Student {}

/**
 * Aggregation:
 * 
 * Students will still exists after classroom will be closed
 */
class Classroom {
    public $id = ''; 
    private $students = [];

    function __construct(int $id) {
        $this->id = $id;
    }
    
    function addStudent(Student $student) { // object is a reference
        $this->students[] = $student;
    }
}

/**
 * Composition:
 * 
 * Classrooms will be destroyed after university will be closed
 */
class University {
    public $name = '';
    private $classrooms = [];
    
    // add student to classroom
    public function setStudent(int $classroom_id, Student $student) {
        $this->classrooms[$classroom_id]->addStudent($student);
    }
    
    /**
     * Solution n°1: Inject a factory
     */
    private $classroomFactory;
    function __construct(ClassroomFactory $classroomFactory = null) {
        $this->classroomFactory = $classroomFactory;
    }
    
    public function addClassroom(int $id) {
        $this->classrooms[$id] = $this->classroomFactory->create($id);
    }
    
    /*
     * Solution n°2: Destroy composition when destroying container object
     */
    public function setClassroom(Classroom &$classroom) { // referenced DI
        $this->classrooms[$classroom->id] = &$classroom;
    }
    
    public function __destruct() {
        foreach ($this->classrooms as &$classroom) {
            $classroom = null;
        }
    }
}

$Alf = new Student();
$Bob = new Student();

/******************************
 * 1. Composition with factory
 *****************************/

class ClassroomFactory {
    function create(int $id): Classroom {
        return new Classroom($id);
    }
}

// Create container object
$universality = new University(new ClassroomFactory());
$universality->addClassroom(204);
$universality->addClassroom(307);

// Students
$universality->setStudent(204, $Alf);
$universality->setStudent(204, $Bob);

unset($universality); // remove object and composition objects in it
$Alf; // will still be an accessible Student instance

/***************************************
 * 2. Composition with __destroy method
 **************************************/

// Classrooms used for composition
$classroom_204 = new Classroom(204);
$classroom_307 = new Classroom(307);

// Create container object
$universality = new University();
$universality->setClassroom($classroom_204);
$universality->setClassroom($classroom_307);

// Students
$universality->setStudent(204, $Alf);
$universality->setStudent(204, $Bob);

unset($universality);
$classroom_307; // will be NULL
$Alf; // will still be an accessible Student instance
