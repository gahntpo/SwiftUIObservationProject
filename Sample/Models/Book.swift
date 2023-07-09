/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
An observable data model for a book.
*/

import SwiftUI
import Observation

@Observable class Book: Identifiable {
    
    var title: String
    var author = Author()
    var isAvailable = true
    let id = UUID()
    let iconIndex: Int = Int.random(in: 0...4)
    
    init(title: String) {
        self.title = title
    }
    
   static func examples() -> [Book] {
       let result = (0...100).map { index in
           Book(title: "book title \(index)")
       }
       
      return result
    }
}
