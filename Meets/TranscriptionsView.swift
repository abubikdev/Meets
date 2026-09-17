//
//  TranscriptionsView.swift
//  Meets
//
//  Created by Adam Bubík on 16.09.2026.
//

import SwiftUI

struct TranscriptionsView: View {
    enum PreviewStyle: Hashable {
        case detailed
        case compact
    }
    
    enum SummarizePreviews: Hashable {
        case summarize
        case dontSummarize
    }
    
    @State private var previewStyle: PreviewStyle = .detailed
    @State private var summarizePreviews: SummarizePreviews = .dontSummarize
    @State private var items: [Int] = [1, 2, 3, 4, 5]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: -12) {
                    if previewStyle == .detailed {
                        DetailedCardPreview()
                            .transition(
                                .blurReplace.combined(with: .scale)
                            )
                            .contextMenu {
                                Button(action: {}) {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                            
                    } else {
                        CompactCardPreview()
                            .transition(
                                .blurReplace.combined(with: .scale)
                            )
                            .contextMenu {
                                Button(action: {}) {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                    }
                    
                    
                }
            }
            .animation(.smooth(duration: 0.2), value: previewStyle)
            .navigationTitle("Transcriptions")
            .toolbarTitleDisplayMode(.inlineLarge)
            .toolbar {
                Menu {
                    Picker("Preview Style", selection: $previewStyle) {
                        Label("Detailed", systemImage: "rectangle.grid.1x2")
                            .tag(PreviewStyle.detailed)
                        Label("Compact", systemImage: "rectangle.grid.1x3")
                            .tag(PreviewStyle.compact)
                    }
                    .pickerStyle(.inline)
                    Divider()
                    Button(action:{}) {
                        Label("Settings", systemImage: "gearshape")
                    }
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
