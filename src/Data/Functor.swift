// Data.Functor

public func arrayMap<A, B>(_ f: @escaping (A) -> B) -> (_ /* arr */: [A]) -> [B] {
    return { arr in
        var result: [B] = []
        for (i, x) in arr.enumerated() {
            result[i] = f(x)
        }
        return result
    }
}
