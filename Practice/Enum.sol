// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enum {
    enum Exam {
        Checking,
        Pass,
        Fail,
        Scholarship
    }

    Exam public e4 = Exam(3);
// setting , getting and updating the enum 
    function set(Exam _e) public  {
        e4 = _e;
    }
    function get() public view returns (Exam) {
        return e4;
    }

    function udelete() public {
        delete e4;
    }

    // Exercise :

    //   1.10 Modifying Enum Based On Conditions
  Exam public e1;
  function Pass() public {
    if(e1==Exam.Checking){
      e1 = Exam.Pass;
    }
  }
}

// Exercise :

contract PizzaDeil {
    enum PizzaOrder {
        Pending,
        Preparing,
        Delivering,
        Received
    }

    PizzaOrder public p1;
    PizzaOrder public p2 = PizzaOrder.Pending;
    PizzaOrder public  p3 = PizzaOrder(3);
  function set(PizzaOrder _p1) public {
    p1=_p1;
  }

  function get() public view returns (PizzaOrder) {
    return p1;
}
}
