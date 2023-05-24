/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
An observable data model for a book.
*/

import SwiftUI
import Observation

@Observable final class Book: Identifiable {
    var title = "Sample Book Title"
    var author = Author()
    var isAvailable = true
}
