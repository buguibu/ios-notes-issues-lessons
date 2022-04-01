//: [Previous](@previous)
/**
ErrorHandling

*/
import Foundation


func failer() throws {
    throw CustomError.demo
}

do {
    try failer()
} catch let error {
    print(error.localizedDescription)
}

//: [Next](@next)
