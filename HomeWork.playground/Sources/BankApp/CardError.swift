public enum CardError: Error {
    case emptyName(reason: String)
    case transferError(reason: String)
    case topUpError(reason: String)
    case spendError(reason: String)
}
