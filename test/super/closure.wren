class Base {
  toString { return "Base" }
}

class Derived is Base {
  getClosure {
    return new Fn { super.toString }
  }

  toString { return "Derived" }
}

var closure = (new Derived).getClosure
IO.print(closure.call) // expect: Base
