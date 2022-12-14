//
//  ContentView.swift
//  HashTagText
//
//  Created by Huang Runhua on 12/9/22.
//

import SwiftUI

struct ContentView: View {
    
    private let text: String = """
    ✨Nikki's Birthday | Love from Stylists✨

    It is grateful to have you around, your company is the magic that makes the adventure more wonderful!
    Thanks to Alder @allerhysse Satomi @Shattered_Earth . Your artwork is a great gift for Nikki! #Shiningnikki #papergames
    """
    
    @State private var showHashtagView: Bool = false
    @State private var showMentionView: Bool = false
    @State private var selectedHashtag: String = ""
    @State private var mentionName: String = ""
    
    var body: some View {
        HashtagText(text)
            .modifier(HashtagTextModifier())
            .padding()
            .onOpenURL { url in
                if let keyword = self.parseURL(url: url) {
                    if keyword.hasPrefix("#") {
                        self.selectedHashtag = keyword
                        self.showHashtagView.toggle()
                    } else {
                        self.mentionName = keyword
                        self.showMentionView.toggle()
                    }
                }
            }
            .sheet(isPresented: $showHashtagView) {
                HashtagDetailView(hashtag: $selectedHashtag)
            }
            .sheet(isPresented: $showMentionView) {
                MentionDetailView(mentionName: $mentionName)
            }
    }
    
    private func parseURL(url: URL) -> String? {
        let string = url.absoluteString
        if let keyword = string.split(separator: "//").last {
            return String(keyword)
        }
        return nil
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
