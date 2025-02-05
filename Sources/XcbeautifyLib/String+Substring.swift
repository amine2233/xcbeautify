#if compiler(>=6.0)
public import Foundation
#else
import Foundation
#endif

extension String {
    var lastPathComponent: String {
        NSString(string: self).lastPathComponent
    }

    func substring(with nsrange: NSRange) -> String? {
        guard let range = Range(nsrange, in: self) else { return nil }
        return String(self[range])
    }
}
