//
//  UserStatView.swift
//  Instagram
//
//  Created by Brett Moxey on 5/8/2023.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        Spacer()
        VStack {
            Text(String(value))
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 1, title: "Follower")
    }
}
