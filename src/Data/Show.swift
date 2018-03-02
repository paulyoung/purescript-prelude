import Foundation // For substring

public extension Data.Show._Foreign {
    public static func showIntImpl(_ n: Int) -> String {
        return String(n)
    }

    public static func showNumberImpl(_ n: Double) -> String {
        return String(n)
    }

    public static func showCharImpl(_ c: Character) -> String {
        let d = c.debugDescription
        let range = d.index(d.startIndex, offsetBy: 1)..<d.index(d.endIndex, offsetBy: -1)
        return "'" + d.substring(with: range) + "'"
    }

    public static func showStringImpl(_ s: String) -> String {
        return s.debugDescription
    }

    public static func showArrayImpl<A>(_ f: @escaping (A) -> String) -> (_ /* xs */: [A]) -> String {
        return { xs in
            // Type checks, but errors at runtime: "fatal error: Index out of range"
            //var ss: [String] = []
            var ss = Array(repeating: "", count: xs.count)
            for (i, x) in xs.enumerated() {
                ss[i] = f(x)
            }
            return "[" + ss.joined(separator: ", ") + "]"
        }
    }
}
