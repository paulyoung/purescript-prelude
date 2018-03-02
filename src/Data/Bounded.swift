public extension Data.Bounded {
    public static let topInt = Int.max
    public static let bottomInt = Int.min

    public static let topChar: Character = "\u{65535}"
    public static let bottomChar: Character = "\0"
}
