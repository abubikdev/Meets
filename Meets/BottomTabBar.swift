import SwiftUI

enum AppTab {
    case history
    case knowledge

    var title: String {
        switch self {
        case .history: "History"
        case .knowledge: "Knowledge"
        }
    }

    var icon: String {
        switch self {
        case .history: "text.pad.header.badge.clock"
        case .knowledge: "apple.intelligence"
        }
    }

    var other: AppTab {
        self == .history ? .knowledge : .history
    }
}

struct BottomTabBar: View {
    @Binding var isCreateSheetOpen: Bool
    @Binding var selectedTab: AppTab
    @Binding var isShowingSearch: Bool
    @State private var isExpanded = false

    var body: some View {
        HStack {
            Button(action: {
                isShowingSearch.toggle()
            }) {
                Circle()
                    .fill(Color.clear)
                    .frame(width: 54, height: 54)
                    .overlay {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(Color.primary)
                            .font(.system(size: 22, weight: .regular))
                    }
                    .glassEffect(.regular.interactive())
            }

            Spacer()

            GlassEffectContainer {
                HStack(spacing: 0) {
                    tabButton(for: selectedTab) {
                        isExpanded.toggle()
                    }

                    if isExpanded {
                        tabButton(for: selectedTab.other) {
                            selectedTab = selectedTab.other
                            isExpanded = false
                        }
                        .transition(.opacity.combined(with: .move(edge: .trailing)))
                    }
                }
            }
            .glassEffect(.regular.interactive(), in: RoundedRectangle(cornerRadius: 32))

            Spacer()

            Button(action: {
                isCreateSheetOpen.toggle()
            }) {
                Circle()
                    .fill(
                        RadialGradient(
                            stops: [
                                .init(color: .white, location: 0),
                                .init(color: .white, location: 0.15),
                                .init(
                                    color: Color(
                                        red: 39.0 / 255.0,
                                        green: 105.0 / 255.0,
                                        blue: 204.0 / 255.0
                                    ),
                                    location: 0.5
                                ),
                                .init(color: .black, location: 0.8)
                            ],
                            center: .top,
                            startRadius: -2,
                            endRadius: 58
                        )
                    )
                    .frame(width: 54, height: 54)
                    .overlay {
                        Circle()
                            .fill(Color.clear)
                            .glassEffect(.clear)
                    }
                    .overlay {
                        Image(systemName: "plus")
                            .foregroundStyle(Color.white)
                            .font(.system(size: 22, weight: .regular))
                    }
                    .glassEffect(.regular.interactive())
            }
        }
        .padding(24)
        .ignoresSafeArea(edges: .bottom)
    }

    private func tabButton(for tab: AppTab, action: @escaping () -> Void) -> some View {
        Button {
            withAnimation(.spring(response: 0.35, dampingFraction: 0.85)) {
                action()
            }
        } label: {
            VStack {
                Image(systemName: tab.icon)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                Text(tab.title)
                    .font(.system(size: 10))
            }
            .foregroundStyle(Color.primary)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 22)
        .buttonStyle(.plain)
    }
}

#Preview {
    @Previewable @State var selectedTab: AppTab = .history
    @Previewable @State var isCreateSheetOpen: Bool = false
    @Previewable @State var isShowingSearch: Bool = false

    BottomTabBar(isCreateSheetOpen: $isCreateSheetOpen, selectedTab: $selectedTab, isShowingSearch: $isShowingSearch)
}
