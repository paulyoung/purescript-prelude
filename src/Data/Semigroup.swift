// Data.Semigroup

public func concatString(_ s1: String) -> (_ /* s2 */: String) -> String {
    return { s2 in
        return s1 + s2
    }
}

public func concatArray<A>(_ xs: [A]) -> (_ /* ys */: [A]) -> [A] {
    return { ys in
        if (xs.count == 0) {
            return ys
        }
        if (ys.count == 0) {
            return xs
        }
        return xs + ys
    }
}
