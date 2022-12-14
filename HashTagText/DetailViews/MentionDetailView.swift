//
//  MentionDetailView.swift
//  HashTagText
//
//  Created by Huang Runhua on 12/14/22.
//

import SwiftUI

struct MentionDetailView: View {
    @Binding var mentionName: String
    
    var body: some View {
        Text("Mention: " + mentionName)
            .padding()
    }
}

struct MentionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MentionDetailView(mentionName: .constant("@twitter"))
    }
}
