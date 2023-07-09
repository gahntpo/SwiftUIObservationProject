/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that shows book information in the library view's list.
*/

import SwiftUI

struct LibraryItemView: View {

    let bookTitle: String
    let bookAuthorName: String
    let imageName: String
    
    var body: some View {
        Self._printChanges()
        
        return HStack(alignment: .firstTextBaseline) {
            Image(systemName: imageName)
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading) {
                Text(bookTitle)
                Text("Written by: \(bookAuthorName)")
                    .font(.caption)
            }
            
        }
        .background(Color.random)
    }
}

#Preview {
    LibraryItemView(bookTitle: "title",
                    bookAuthorName: "author",
                    imageName: "book")
}
