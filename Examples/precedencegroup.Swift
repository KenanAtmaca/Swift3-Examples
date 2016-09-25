precedencegroup Additive {
    associativity: left
}
precedencegroup Multiplicative {
    associativity: left
    higherThan: Additive
}
precedencegroup Exponentiative {
    associativity: left
    higherThan: Multiplicative
}

infix operator + : Additive
infix operator * : Multiplicative
infix operator ** : Exponentiative

extension Int {
    static func ** (rhs:Int,lhs:Int) -> Int {
        return (rhs + lhs) * 2
    }
}

1 + 1 + 2 ** 3  // 12

precedencegroup Newpre {
  associativity: left
  higherThan: Multiplicative
}

infix operator *^: Newpre

extension Float {
    static func *^ (rhs:Float,lhs:Float) -> Float {
    return (rhs * lhs) + rhs
    }
}

2.0 * 5.0 *^ 1.0 // 20

//---------------------------------


/*Standart Lib Precedences*/

precedencegroup AssignmentPrecedence {
  assignment: true
  associativity: right
}
precedencegroup TernaryPrecedence {
  associativity: right
  higherThan: AssignmentPrecedence
}
precedencegroup DefaultPrecedence {
  higherThan: TernaryPrecedence
}
precedencegroup LogicalDisjunctionPrecedence {
  associativity: left
  higherThan: TernaryPrecedence
}
precedencegroup LogicalConjunctionPrecedence {
  associativity: left
  higherThan: LogicalDisjunctionPrecedence
}
precedencegroup ComparisonPrecedence {
  higherThan: LogicalConjunctionPrecedence
}
precedencegroup NilCoalescingPrecedence {
  associativity: right
  higherThan: ComparisonPrecedence
}
precedencegroup CastingPrecedence {
  higherThan: NilCoalescingPrecedence
}
precedencegroup RangeFormationPrecedence {
  higherThan: CastingPrecedence
}
precedencegroup AdditionPrecedence {
  associativity: left
  higherThan: RangeFormationPrecedence
}
precedencegroup MultiplicationPrecedence {
  associativity: left
  higherThan: AdditionPrecedence
}
precedencegroup BitwiseShiftPrecedence {
  higherThan: MultiplicationPrecedence
}

postfix operator ++
postfix operator --
// postfix operator !

prefix operator ++
prefix operator --
prefix operator !
prefix operator ~
prefix operator +
prefix operator -

// infix operator = : AssignmentPrecedence
infix operator *=  : AssignmentPrecedence
infix operator /=  : AssignmentPrecedence
infix operator %=  : AssignmentPrecedence
infix operator +=  : AssignmentPrecedence
infix operator -=  : AssignmentPrecedence
infix operator <<= : AssignmentPrecedence
infix operator >>= : AssignmentPrecedence
infix operator &=  : AssignmentPrecedence
infix operator ^=  : AssignmentPrecedence
infix operator |=  : AssignmentPrecedence

// infix operator ?: : TernaryPrecedence

infix operator ||  : LogicalDisjunctionPrecedence

infix operator &&  : LogicalConjunctionPrecedence

infix operator <   : ComparisonPrecedence
infix operator <=  : ComparisonPrecedence
infix operator >   : ComparisonPrecedence
infix operator >=  : ComparisonPrecedence
infix operator ==  : ComparisonPrecedence
infix operator !=  : ComparisonPrecedence
infix operator === : ComparisonPrecedence
infix operator !== : ComparisonPrecedence
infix operator ~=  : ComparisonPrecedence

infix operator ??  : NilCoalescingPrecedence

// infix operator as : CastingPrecedence
// infix operator as? : CastingPrecedence
// infix operator as! : CastingPrecedence
// infix operator is : CastingPrecedence

infix operator ..< : RangeFormationPrecedence
infix operator ... : RangeFormationPrecedence

infix operator +   : AdditionPrecedence
infix operator -   : AdditionPrecedence
infix operator &+  : AdditionPrecedence
infix operator &-  : AdditionPrecedence
infix operator |   : AdditionPrecedence
infix operator ^   : AdditionPrecedence

infix operator *   : MultiplicationPrecedence
infix operator /   : MultiplicationPrecedence
infix operator %   : MultiplicationPrecedence
infix operator &*  : MultiplicationPrecedence
infix operator &   : MultiplicationPrecedence

infix operator <<  : BitwiseShiftPrecedence
infix operator >>  : BitwiseShiftPrecedence
