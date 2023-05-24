/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that shows book information in the library view's list.
*/

import SwiftUI

struct LibraryItemView: View {
    var book: Book
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(book.title)
            Text("Written by: \(book.author.name)")
                .font(.caption)
        }
    }
}

#Preview {
    LibraryItemView(book: Book())
}
