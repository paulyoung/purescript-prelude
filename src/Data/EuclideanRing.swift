// Data.EuclideanRing

public func intDegree(_ x: Int) -> Int {
    return abs(x)
}

public func intDiv(_ x: Int) -> (_ /* y */: Int) -> Int {
    return { y in
        return x / y
    }
}

public func intMod(_ x: Int) -> (_ /* y */: Int) -> Int {
    return { y in
        return x % y
    }
}

public func numDiv(_ n1: Double) -> (_ /* n2 */: Double) -> Double {
    return { n2 in
        return n1 / n2
    }
}
