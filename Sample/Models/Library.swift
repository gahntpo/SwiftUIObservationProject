/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A observable data model for a library that contains books.
*/

import SwiftUI
import Observation

@Observable final class Library {
    var books: [Book] = [Book(), Book(), Book()]
    
    var availableBooksCount: Int {
        books.filter(\.isAvailable).count
    }
}

// Define a custom environment property for the current library. To use the
// environment property in this sample, follow these steps:
//
// 1. Open the file `BookReaderApp.swift`.
// 2. Replace the line `.environment(library)` with `.environment(\.library, library)`.
// 3. Open the file `LibraryView.swift`.
// 4. Replace the line `@Environment(Library.self) private var library`
// with `@Environment(\.library) private var library`.

extension EnvironmentValues {
    var library: Library {
        get { self[LibraryKey.self] }
        set { self[LibraryKey.self] = newValue }
    }
}

private struct LibraryKey: EnvironmentKey {
    static var defaultValue: Library = Library()
}
