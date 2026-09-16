import SwiftUI

struct ContentView: View {
    @State private var selectedTab: AppTab = .history
    @State private var isCreateSheetOpen: Bool = false
    @State private var isShowingSearch: Bool = false
    
    var body: some View {
        NavigationView {
            switch selectedTab {
            case .history:
                Text("History")
                    .navigationTitle("History")
                    .toolbarTitleDisplayMode(.inlineLarge)
                
            case .knowledge:
                Text("Knowledge")
                    .navigationTitle("Knowledge")
                    .toolbarTitleDisplayMode(.inlineLarge)
            }
        }
        .safeAreaInset(edge: .bottom) {
            BottomTabBar(isCreateSheetOpen: $isCreateSheetOpen, selectedTab: $selectedTab, isShowingSearch: $isShowingSearch)
        }
        .sheet(isPresented: $isCreateSheetOpen) {
            Text("Create")
        }
        .sheet(isPresented: $isShowingSearch) {
            Text("Search")
        }
    }
}

#Preview {
    ContentView()
}
