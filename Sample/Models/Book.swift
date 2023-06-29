/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
An observable data model for a book.
*/

import SwiftUI

struct Book: Identifiable {
    var title = "Sample Book Title \(Int.random(in: 0...100))"
    var author = Author()
    var isAvailable = true
    let id = UUID()
    let iconIndex: Int = Int.random(in: 0...4)
    
   static func examples() -> [Book] {
       let result = (0...100).map { index in
           Book(title: "book title \(index)")
       }
       
      return result
    }
}
