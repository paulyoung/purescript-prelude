public extension Data.HeytingAlgebra._Foreign {
    public static func boolConj(_ b1: Bool) -> (_ /* b2 */: Bool) -> Bool {
        return { b2 in
            return b1 && b2
        }
    }

    public static func boolDisj(_ b1: Bool) -> (_ /* b2 */: Bool) -> Bool {
        return { b2 in
            return b1 || b2
        }
    }

    public static func boolNot(_ b: Bool) -> Bool {
        return !b
    }
}
