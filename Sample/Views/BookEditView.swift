/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The view that the app uses to edit the title of a book.
*/

import SwiftUI

struct BookEditView: View {
    @Bindable var book: Book
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
            
            Button("Close") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    BookEditView(book: Book())
}
