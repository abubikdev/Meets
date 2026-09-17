//
//  DetailedCardPreview.swift
//  Meets
//
//  Created by Adam Bubík on 16.09.2026.
//

import SwiftUI

struct DetailedCardPreview: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Wednesdays meetup")
                    .font(.title3)
                    .bold()
                
                Text("Today, we’re introducing iPhone Duo, our first foldable iPhone. It opens from a compact form factor into a wide screen iPad style screen.")
                    .lineLimit(2)
                    .truncationMode(.tail)
                    .opacity(0.4)
                    .transition(
                        .opacity.combined(with: .blurReplace)
                    )
                
                
                HStack {
                    
                    Label("3", systemImage: "person.fill")
                        .font(.subheadline).bold()
                        .padding(EdgeInsets(
                            top: 6,
                            leading: 6,
                            bottom: 6,
                            trailing: 8
                        ))
                        .opacity(0.4)
                    
                    
                    Spacer()
                    
                    Label("2 items", systemImage: "checkmark.seal.fill")
                        .font(.subheadline).bold()
                        .padding(EdgeInsets(
                            top: 6,
                            leading: 6,
                            bottom: 6,
                            trailing: 8
                        ))
                        .foregroundStyle(Color.white)
                        .background(Color.green)
                        .clipShape(Capsule())
                }
            }
            .padding(12)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 22))
            HStack {
                Label("Work", systemImage: "flag.fill")
                    .font(.headline)
                Spacer()
                Text("9.9.2026")
                    .font(.headline)
            }
            .padding(EdgeInsets(
                top: 2,
                leading: 12,
                bottom: 8,
                trailing: 12
            ))
            .opacity(0.6)
        }
        .padding(4)
        .background(Color(red: 0.961, green: 0.961, blue: 0.961))
        .clipShape(RoundedRectangle(cornerRadius: 26))
        .padding(12)
        
    }
}
