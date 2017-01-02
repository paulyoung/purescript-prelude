// Data.Show

public func showIntImpl(_ n: Int) -> String {
    return String(n)
}

public func showNumberImpl(_ n: Double) -> String {
    return String(n)
}

public func showCharImpl(_ c: Character) -> String {
    let d = c.debugDescription
    let range = d.index(d.startIndex, offsetBy: 1)..<d.index(d.endIndex, offsetBy: -1)
    return "'" + d.substring(with: range) + "'"
}

public func showStringImpl(_ s: String) -> String {
    return s.debugDescription
}

public func showArrayImpl<A>(_ f: @escaping (A) -> String) -> (_ /* xs */: [A]) -> String {
    return { xs in
        var ss: [String] = []
        for (i, x) in xs.enumerated() {
            ss[i] = f(x)
        }
        return "[" + ss.joined(separator: ",") + "]"
    }
}
