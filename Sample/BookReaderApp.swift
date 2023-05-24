/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The main app, which creates a scene that contains a window group that
 contains a library view.
*/

import SwiftUI

@main
struct BookReaderApp: App {
    @State private var library = Library()
    
    var body: some Scene {
        WindowGroup {
            LibraryView()
                .environment(library)
        }
    }
}
