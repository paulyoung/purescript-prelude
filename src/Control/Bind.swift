public extension Control.Bind._Foreign {
    public static func arrayBind<A, B>(arr: [A]) -> (_ /* f */: (A) -> [B]) -> [B] {
        return { f in
            var result: [B] = []
            for x in arr {
                result.append(contentsOf: f(x))
            }
            return result
        }
    }
}
