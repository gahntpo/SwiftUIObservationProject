/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A observable data model for a library that contains books.
*/

import SwiftUI
import Observation

@Observable class Library {
    var books: [Book] = Book.examples()
    
    var availableBooksCount: Int {
        books.filter(\.isAvailable).count
    }
    
    func delete(book: Book) {
        if let index = books.firstIndex(where: { $0.id == book.id  }) {
            books.remove(at: index)
        }
    }
    
    var icons = ["book", "pencil", "circle", "graduationcap", "paperclip"]
    
    func iconName(for book: Book) -> String {
        icons[book.iconIndex]
        // ["book", "pencil", "circle", "graduationcap", "paperclip"].randomElement() ?? "questionmark.circle"
    }
}

extension EnvironmentValues {
    var library: Library {
        get { self[LibraryKey.self] }
        set { self[LibraryKey.self] = newValue }
    }
}

private struct LibraryKey: EnvironmentKey {
    static var defaultValue: Library = Library()
}
