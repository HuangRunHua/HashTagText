//
//  HashtagDetailView.swift
//  HashTagText
//
//  Created by Huang Runhua on 12/13/22.
//

import SwiftUI

struct HashtagDetailView: View {
    
    @Binding var hashtag: String
    
    var body: some View {
        Text(hashtag)
            .padding()
    }
}

struct HashtagDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HashtagDetailView(hashtag: .constant("twitter"))
    }
}
