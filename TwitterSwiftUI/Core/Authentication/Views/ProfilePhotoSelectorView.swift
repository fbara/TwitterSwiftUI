//
//  ProfilePhotoSelectorView.swift
//  TwitterSwiftUI
//
//  Created by Frank Bara on 3/9/22.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    
    var body: some View {
                
        VStack {
            AuthHeaderView(title1: "Create your account.", title2: "Add a profile photo.")
            
            Button {
                print(("pic image here...."))
            } label: {
                Image("person.crop.circle.badge.plus")
                    .font(Font.system(size: 180, weight: .ultraLight))
                    .scaledToFill()
                    .foregroundColor(Color(.systemBlue))
                    .padding(.top, 44)
            }

            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
