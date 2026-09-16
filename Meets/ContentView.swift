import SwiftUI

struct ContentView: View {
    @State private var isCreateSheetOpen: Bool = false
    
    var body: some View {
        TabView {
            
        }
        .sheet(isPresented: $isCreateSheetOpen) {
            Text("Create")
        }
    }
}

#Preview {
    ContentView()
}
