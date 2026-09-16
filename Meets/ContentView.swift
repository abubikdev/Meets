import SwiftUI

struct ContentView: View {
    @State private var isCreateSheetOpen: Bool = false
    
    var body: some View {
        TabView {
            Tab("Transcriptions", systemImage: "text.pad.header.badge.clock") {
                Text("Transcriptions")
            }
            Tab("Knowledge", systemImage: "apple.intelligence") {
                Text("Transcriptions")
            }
            Tab("New", systemImage: "plus", role: .prominent) {
                Text("Create something new")
            }
        }
    }
}

#Preview {
    ContentView()
}
