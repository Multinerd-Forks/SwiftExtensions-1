// Data+ConvertDataToType
// Find more useful Swift extensions at https://github.com/jakezeal/SwiftExtensions

import UIKit

extension Data {
    
    // Updated for Swift 3
    func scanValue<T>(start: Int, length: Int) -> T {
        return subdata(in: start..<start+length).withUnsafeBytes { $0.pointee }
    }
    
    // Swift 2.3 (deprecated)
    /*
     func convertNSDataToType<T>() -> T {
     var valueOfType: T!
     getBytes(&valueOfType, length: sizeof(T))
     return valueOfType
     }
     */
}



let data = Data(bytes: [0x01, 0x02, 0x03, 0x04])
let convertedData: Int = data.scanValue(start: 0, length: data.count)
print(convertedData)


