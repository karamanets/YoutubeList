//
//  SecondView.swift
//  YoutubeList
//
//  Created by Alex Karamanets on 26.12.2022.
//

import SwiftUI

struct SecondView: View {
    
    var video: Video
    
    var body: some View {
        
        VStack (spacing: 7) {
            Spacer()
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 170)
                .cornerRadius(15 )
            
            Text(video.title)
                .lineLimit(2)
                .font(.system(size: 15, weight: .bold, design: .monospaced))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 60)
            
            HStack (spacing: 40){
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.system(size: 12, weight: .semibold, design: .default ))
                    .foregroundColor(.secondary)
                
                Text(video.upLoadDate)
                    .font(.system(size: 12, weight: .semibold, design: .default ))
                    .foregroundColor(.secondary)
            }
            Text(video.description)
                .font(.system(size: 19, weight: .heavy, design:  .default))
                .padding(.all, 30)
                .multilineTextAlignment(.center)
            
            Spacer()
            
                .frame(height: 10)
            Link(destination: video.url, label: {
                Text("Watch Now")
                    .frame(width: 280, height: 70)
                    .font(.system(size: 29, weight: .bold, design: .default))
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(15)
            })
            Spacer()
                .frame(height: 150)
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(video: VideoList.topTen.first!)
    }
}

