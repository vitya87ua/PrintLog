import Foundation

public enum LogState: String {
    case info = "✅"
    case warning = "⚠️"
    case error = "‼️"
}

public func Log(
    _ items: Any...,
    fileID: String = #fileID,
    line: Int = #line,
    funcName: String = #function,
    state: LogState = .info
) {
    print(
        ((items.first as? Error) != nil) ? LogState.error.rawValue : state.rawValue,
        fileID.components(separatedBy: "/").last ?? fileID,
        "⏰", Date().formatted(date: .omitted, time: .standard),
        "#️⃣", line,
        funcName,
        "⏩", items.map { String(describing: $0) }.joined(separator: " ")
    )
}
