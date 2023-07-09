/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The view that the app uses to edit the title of a book.
*/

import SwiftUI

struct BookEditView: View {
    @Binding var book: Book
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack() {
            HStack {
                Text("Title")
                TextField("Title", text: $book.title)
                    .textFieldStyle(.roundedBorder)
                    .onSubmit {
                        dismiss()
                    }
            }
            
            Toggle(isOn: $book.isAvailable) {
                Text("Book is available")
            }
            
            Button {
                book.isAvailable = false
            } label: {
                Text("set unaba")
            }

            
            Button("Close") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    BookEditView(book: .constant(Book(title: "title")))
}
