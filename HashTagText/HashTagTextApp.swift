//
//  HashTagTextApp.swift
//  HashTagText
//
//  Created by Huang Runhua on 12/9/22.
//

import SwiftUI

@main
struct HashTagTextApp: App {
    
    @State private var showAlert: Bool = false
    @State private var selectedKeyword: String = ""
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    let string = url.absoluteString
                    if let keyword = string.split(separator: "//").last {
                        self.selectedKeyword = String(keyword)
                        print(self.selectedKeyword)
                        self.showAlert.toggle()
                    }
                }
                .sheet(isPresented: $showAlert) {
                    HashtagDetailView(hashtag: $selectedKeyword)
                }
        }
    }
}
