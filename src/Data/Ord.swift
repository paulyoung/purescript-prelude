//  Data.Ord

public func ordArrayImpl<A>(_ f: @escaping (A) -> (A) -> Int) -> (_ /* xs */: [A]) -> (_ /* ys */: [A]) -> Int {
    return { xs in
        return { ys in
            var i = 0
            let xlen = xs.count
            let ylen = ys.count
            while (i < xlen && i < ylen) {
                let x = xs[i]
                let y = ys[i]
                let o = f(x)(y)
                if (o != 0) {
                    return o
                }
                i += 1
            }
            if (xlen == ylen) {
                return 0
            } else if (xlen > ylen) {
                return -1
            } else {
                return 1
            }
        }
    }
}
