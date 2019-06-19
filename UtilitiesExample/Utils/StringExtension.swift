//
//  StringExtension.swift
//
//  Created by Imthath M on 28/03/19.
//  No Copyright.
//

import Foundation

extension String {

    /// Enables subscripting string with an int to get the character at the index
    public subscript(position: Int) -> Element {
        return self[self.index(startIndex, offsetBy: position)]
    }

    /// Decodes and returns codable types
    public func objects<T: Codable>() -> [T]? {
        guard let data = self.data(using: .utf8) else { return nil }
        guard let objects = try? JSONDecoder().decode([T].self, from: data) else { return nil }
        return objects
    }

    public func getTimeIntervalSince1970(with dateFormatter: DateFormatter) -> TimeInterval? {
        guard let date = Date.get(from: self, with: dateFormatter) else { return nil }
        return date.timeIntervalSince1970
    }
    
    public var isEmail: Bool {
        let emailRegEx = "(?=.{6,64}$)[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,56}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegEx).evaluate(with: self)
    }
    
    public var isMobileNumber: Bool {
        let mobileRegEx = "[0-9]{10}"
        let input = self.replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: "-", with: "")
            .replacingOccurrences(of: "/", with: "")
        return NSPredicate(format: "SELF MATCHES %@", mobileRegEx).evaluate(with: input)
    }
    
    public var dictionary: [String: Any]? {
        if let data = self.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
}

extension BinaryInteger {
    public var isMobile: Bool {
        return String(self.magnitude).count == 10
    }
}
