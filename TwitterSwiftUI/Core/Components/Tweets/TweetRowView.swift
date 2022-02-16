//
//  TweetRowView.swift
//  TwitterSwiftUI
//
//  Created by Frank Bara on 2/15/22.
//

import SwiftUI

struct TweetRowView: View {
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            // profile image + user info + tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                // user info & tweet caption
                VStack(alignment: .leading, spacing: 4) {
                    // user info
                    HStack {
                        Text("Frank Bara")
                            .font(.subheadline)
                            .bold()
                        
                        Text("@fbara")
                            .foregroundColor(Color.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(Color.gray)
                            .font(.caption)
                    }
                    
                    // tweet caption
                    Text("I believe in harvey dent.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                                
            }
            // action buttons
            HStack {
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                    
                }
                Spacer()
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                    
                }
                Spacer()
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                    
                }
                Spacer()
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                    
                }

            }
            .padding()
        }
        .padding()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
            
    }
}
