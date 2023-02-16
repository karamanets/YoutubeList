//
//  Main.swift
//  YoutubeList
//
//  Created by Alex Karamanets on 26.12.2022.
//

import SwiftUI

struct Main: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationStack {
            
            List (videos, id: \.id) { item in
                
                NavigationLink(destination: SecondView(video: item),
                               label: { SecondViewLink(item: item) })
            }
            .navigationTitle("Wonder Netting")
        }
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
