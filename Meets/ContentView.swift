import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
            }
            .safeAreaInset(edge: .bottom) {
                HStack {
                    Button(action:{}) {
                        Circle()
                            .fill(
                                RadialGradient(
                                    stops: [
                                        .init(color: .clear, location: 0),
                                        .init(color: .clear, location: 0.15),
                                        .init(color: Color(red: 39.0 / 255.0, green: 105.0 / 255.0, blue: 204.0 / 255.0), location: 0.5),
                                        .init(color: .black, location: 1)
                                    ],
                                    center: .top,
                                    startRadius: -2,
                                    endRadius: 58
                                )
                            )
                            .frame(width: 64, height: 64)
                            .overlay {
                                Circle()
                                    .fill(Color.clear)
                                    .glassEffect(.clear)
                            }
                            .overlay {
                                Image(systemName: "plus")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 28, weight: .regular, design: .default))
                                
                            }
                            .glassEffect(.regular.interactive())
                    }
                }
                .padding(.horizontal, 28)
            }
        }
    }
}

#Preview {
    ContentView()
}
