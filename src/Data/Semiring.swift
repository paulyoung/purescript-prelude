// Data.Semiring

public func intAdd(_ x: Int) -> (_ /* y */: Int) -> Int {
    return { y in
        return x + y
    }
}

public func intMul(_ x: Int) -> (_ /* y */: Int) -> Int {
    return { y in
        return x * y
    }
}

public func numAdd(_ n1: Double) -> (_ /* n2 */: Double) -> Double {
    return { n2 in
        return n1 + n2
    }
}

public func numMul(_ n1: Double) -> (_ /* n2 */: Double) -> Double {
    return { n2 in
        return n1 * n2
    }
}
