//
//  FishItem.swift
//  AppLearning
//
//  Created by Alain Scherer on 29.08.20.
//

import SwiftUI

struct FishItem: View {
    var fish: Fish = fishes[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                HStack {
                    Spacer()
                    HStack {
                        Text(fish.number)
                            .font(.custom("SuisseBold", size: 60))
                            .kerning(-1)
                            .foregroundColor(Color.white)
                            .opacity(0.1)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 20.0)
                        
                        Spacer()
                        Image(fish.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.trailing, 30.0)
                            .frame(width: 200, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                    }
                }
                Spacer()
            }
            HStack(alignment: .lastTextBaseline) {
                Text(fish.title)
                    .font(.custom("SuisseBold", size: 25))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 30.0)
                Spacer()
                Text("Leichzeit")
                    .font(.custom("SuisseLight", size: 12))
                    .foregroundColor(Color.white)
                    .opacity(0.3)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing, 30.0)
            }
            HStack {
                Text(fish.subtitle)
                    .font(.custom("SuisseLight", size: 12))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding([.leading,], 30.0)
                    .padding([.bottom], 10.0)
                Spacer()
                Text(fish.leichzeit)
                    .font(.custom("SuisseLight", size: 12))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing, 30.0)
                    .padding([.bottom], 10.0)
                

                 
            }
            Image("Divider")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 30.0)
                .opacity(0.1)
        }
        .background(fish.color)
        
    }
}

struct FishItem_Previews: PreviewProvider {
    static var previews: some View {
        FishItem()
    }
}
