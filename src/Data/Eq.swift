public extension Data.Eq._Foreign {
    public static func refEq<A: Equatable>(_ r1: A) -> (_ /* r2 */: A) -> Bool {
        return { r2 in
            return r1 == r2
        }
    }

    public static func refIneq<A: Equatable>(_ r1: A) -> (_ /* r2 */: A) -> Bool {
        return { r2 in
            return r1 != r2
        }
    }

    public static func eqArrayImpl<A: Equatable>(_ f: @escaping (A) -> (A) -> Bool) -> (_ /* xs */: [A]) -> (_ /* ys */: [A]) -> Bool {
        return { xs in
            return { ys in
                if (xs.count != ys.count) {
                    return false
                }
                for (i, x) in xs.enumerated() {
                    if (f(x)(ys[i])) {
                        return false
                    }
                }
                return true
            }
        }
    }
}
