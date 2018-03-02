public extension Date.Ord.Unsafe._Foreign {
    public static func unsafeCompareImpl<A: Comparable, O>(_ lt: O) -> (_ /* eq */: O) -> (_ /* gt */: O) -> (_ /* x */: A) -> (_ /* y */: A) -> O {
        return { eq in
            return { gt in
                return { x in
                    return { y in
                        return x < y ? lt : x == y ? eq : gt
                    }
                }
            }
        }
    }
}
