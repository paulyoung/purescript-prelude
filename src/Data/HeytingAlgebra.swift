// Data.HeytingAlgebra

public func boolConj(_ b1: Bool) -> (_ /* b2 */: Bool) -> Bool {
    return { b2 in
        return b1 && b2
    }
}

public func boolDisj(_ b1: Bool) -> (_ /* b2 */: Bool) -> Bool {
    return { b2 in
        return b1 || b2
    }
}

public func boolNot(_ b: Bool) -> Bool {
    return !b
}
