//
//  SecondViewLink.swift
//  YoutubeList
//
//  Created by Alex Karamanets on 26.12.2022.
//

import SwiftUI


struct SecondViewLink: View {
    
    var item: Video
    
    var body: some View {
        HStack {
            
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .cornerRadius(10)
            
            VStack (alignment: .center, spacing: 6) {
                Text(item.title)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                    .font(.system(size: 13, weight: .bold, design: .monospaced ))
                
                Text(item.upLoadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary )
                
                
            }
        }
    }
}
