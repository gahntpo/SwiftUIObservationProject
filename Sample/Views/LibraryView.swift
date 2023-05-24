/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that lists the books available in the library.
*/

import SwiftUI

struct LibraryView: View {
    @Environment(Library.self) private var library
    
    var body: some View {
        NavigationStack {
            List(library.books) { book in
                NavigationLink {
                    BookView(book: book)
                } label: {
                    LibraryItemView(book: book)
                }
            }
            .navigationTitle("Books available: \(library.availableBooksCount)")
        }
    }
}

#Preview {
    LibraryView()
        .environment(Library())
}
