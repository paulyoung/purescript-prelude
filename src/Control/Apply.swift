public extension Control.Apply._Foreign {
    public static func arrayApply<A, B>(_ fs: [(A) -> B]) -> (_ /* xs */: [A]) -> [B] {
        return { xs in
            var result: [B] = []
            for (i, x) in xs.enumerated() {
                result[i] = fs[i](x)
            }
            return result
        }
    }
}
