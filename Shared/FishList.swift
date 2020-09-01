//
//  FishList.swift
//  AppLearning
//
//  Created by Alain Scherer on 29.08.20.
//

import SwiftUI

struct FishList: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
            ZStack {
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(fishes) { item in
                            FishItem(fish: item)

                        }
                    }
                    .frame(maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    Divider()
                        .foregroundColor(.white)
                }
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }

struct FishList_Previews: PreviewProvider {
    static var previews: some View {
        FishList()
            .previewDevice("iPhone 11 Pro Max")
    }
}
