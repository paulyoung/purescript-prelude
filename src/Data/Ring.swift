public extension Data.Ring._Foreign {
    public static func intSub(_ x: Int) -> (_ /* y */: Int) -> Int {
        return { y in
            return x - y
        }
    }

    public static func numSub(_ n1: Double) -> (_ /* n2 */: Double) -> Double {
        return { n2 in
            return n1 - n2
        }
    }
}
