/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that lists the books available in the library.
*/

import SwiftUI

struct LibraryView: View {
    @EnvironmentObject var library: Library
    
    var body: some View {
        _ = Self._printChanges()
      return NavigationView {
            List($library.books) { $book in
                NavigationLink {
                    BookView(book: $book)
                } label: {
                    LibraryItemView(book: book,
                                    imageName: library.iconName(for: book))
                    
                   // TextField("book", text: $book.title)
                   //     .background(Color.random)
                }
            }
            .navigationTitle("Books available: \(library.availableBooksCount)")
        }
    }
}

#Preview {
    LibraryView()
        .environmentObject(Library())
}
