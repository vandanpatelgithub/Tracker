//
//  TipsView.swift
//  Tracker2
//
//  Created by Vandan Patel on 12/23/20.
//

import SwiftUI

struct TipsView: View {
    var tips: [Tip]
    
    init() {
        guard
            let url = Bundle.main.url(forResource: "tips", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let decodedTips = try? JSONDecoder().decode([Tip].self, from: data) else {
            tips = []
            return
        }
        tips = decodedTips
    }
    
    
    var body: some View {
        List(tips, id: \.text, children: \.children) { tip in
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
