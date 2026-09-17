//
//  CompactCardPreview.swift
//  Meets
//
//  Created by Adam Bubík on 16.09.2026.
//

import SwiftUI

struct CompactCardPreview: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("Wednesdays meetup")
                .font(.title3)
                .bold()
            
            Spacer()
            
            HStack(spacing: 8) {
                HStack {
                    Label("Work", systemImage: "flag.fill")
                        .font(.system(size: 14, weight: .semibold, design: .default))
                        .labelIconToTitleSpacing(4)
                }
                .padding(EdgeInsets(
                    top: 4,
                    leading: 0,
                    bottom: 4,
                    trailing: 0
                ))
                .opacity(0.6)
                Label("2", systemImage: "checkmark.seal.fill")
                    .font(.system(size: 14, weight: .semibold, design: .default))
                    .padding(EdgeInsets(
                        top: 4,
                        leading: 6,
                        bottom: 4,
                        trailing: 8
                    ))
                    .labelIconToTitleSpacing(2)
                    .foregroundStyle(Color.white)
                    .background(Color.green)
                    .clipShape(Capsule())
            }
            
            
        }
        .padding(14)
        .background(Color(red: 0.961, green: 0.961, blue: 0.961))
        .clipShape(RoundedRectangle(cornerRadius: 28))
        .padding(12)
    }
}

#Preview(traits: .fixedLayout(width: 388, height: 120)) {
    CompactCardPreview()
}
