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
                            .fill(Color.clear)
                            .frame(width: 54, height: 54)
                            .overlay {
                                Image(systemName: "magnifyingglass")
                                    .foregroundStyle(Color.primary)
                                    .font(.system(size: 22, weight: .regular, design: .default))
                                
                            }
                            .glassEffect(.regular.interactive())
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 0) {
                        HStack {
                            VStack {
                                Image(systemName: "text.pad.header.badge.clock")
                                    .font(.system(size: 18, weight: .regular, design: .default))
                                Text("History")
                                    .font(.system(size: 10, weight: .semibold, design: .default))
                            }
                        }
                        .frame(width: 86, height: 52)
                        
                        HStack {
                            VStack {
                                Image(systemName: "apple.intelligence")
                                    .font(.system(size: 18, weight: .regular, design: .default))
                                Text("Knowledge")
                                    .font(.system(size: 10, weight: .semibold, design: .default))
                            }
                        }
                        .frame(width: 86, height: 52)
                    }
                    .frame(width: 172, height: 56)
                    .glassEffect(.regular)
                    
                    Spacer()
                    
                    Button(action:{}) {
                        Circle()
                            .fill(
                                RadialGradient(
                                    stops: [
                                        .init(color: .white, location: 0),
                                        .init(color: .white, location: 0.15),
                                        .init(color: Color(red: 39.0 / 255.0, green: 105.0 / 255.0, blue: 204.0 / 255.0), location: 0.5),
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
                                    .font(.system(size: 22, weight: .regular, design: .default))
                                
                            }
                            .glassEffect(.regular.interactive())
                    }
                }
                .padding(32)
                .ignoresSafeArea(edges: .bottom)
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
