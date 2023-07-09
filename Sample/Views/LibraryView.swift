/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that lists the books available in the library.
*/

import SwiftUI

struct LibraryView: View {
    @EnvironmentObject var library: Library
    
    var body: some View {
        Self._printChanges()
        
        return NavigationView {
            List($library.books) { $book in
                NavigationLink {
                    BookView(book: $book)
                } label: {
                    LibraryItemView(bookTitle: book.title,
                                    bookAuthorName: book.author.name,
                                    imageName: library.iconName(for: book))
                    TextField("test", text: $book.title)
                }
            }
            .navigationTitle("ObservableObject")
            .toolbar(content: {
                Text("Books available: \(library.availableBooksCount)")
            })
        }
    }
}

#Preview {
    LibraryView()
        .environmentObject(Library())
}
