//
//  WeatherView.swift
//  AppLearning
//
//  Created by Alain Scherer on 17.08.20.
//

import SwiftUI
import Mapbox

struct WeatherView: View {
    var body: some View {
        VStack {
            ZStack {
                MapTest()
                    .ignoresSafeArea(.all)
                Rectangle()
                    .foregroundColor(.clear)
                    .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .center, endPoint: .bottom))
            }
            
            Spacer()
            VStack {
                VStack {
                    HStack(alignment: .center) {
                        HStack(alignment: .lastTextBaseline) {
                            Text("24")
                                .font(.custom("SuisseBold", size: 105))                            .multilineTextAlignment(.leading)
                                    .foregroundColor(.white)
                                
                                
                            Text("°C")
                                .font(.custom("SuisseBold", size: 40))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack(spacing: 10.0) {
                            HStack {
                                
                                Image("Arrow-up")
                                Text("27 ºC")
                                    .font(.custom("SuisseBold", size: 20))
                                    .multilineTextAlignment(.trailing)
                                    .foregroundColor(.white)
                                    .frame(width: 52.0)

                            }
                            HStack {
                                Image("Arrow-down")
                                    .padding(.trailing, -1.0)
                                Text("18 ºC")
                                    .font(.custom("SuisseBold", size: 20))
                                    .multilineTextAlignment(.trailing)
                                    .foregroundColor(.white)
                                    .frame(width: 52.0)
                            }
                        }
                    }
                    .padding(.horizontal)
                    Image("Divider")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, -8.0)
                        .padding(.bottom, -40)
                        .padding(.leading, 17)
                        .padding(.trailing, 17)



                    
                    HStack {
                        HStack {
                            Text("Heavy Rain")
                                .font(.custom("SuisseBold", size: 35))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                            Spacer()
                            Image("Clear-sky")
                                .padding(.trailing, 7.0)
                                .colorInvert()
                        }
                        Image("Heavy-Rain")
                            .colorInvert()
                    }
                    .padding(.horizontal)
                }
                HStack {
                    VStack {
                        Text("Wind\nDirection")
                            .font(.custom("SuisseBold", size: 12))
                            .multilineTextAlignment(.center)
                            .frame(width: 80, height: 40, alignment: .center)
                            .lineLimit(nil)
                            .foregroundColor(.white)
                        Text("NO")
                            .font(.custom("SuisseBold", size: 25))
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 1.0)
                            .foregroundColor(.white)
                        Text("–")
                            .font(.custom("SuisseBold", size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        
                    }
                    VStack {
                        VStack {
                            Text("Wind\nSpeed")
                                .font(.custom("SuisseBold", size: 12))
                                .multilineTextAlignment(.center)
                                .frame(width: 80, height: 40, alignment: .center)
                                .lineLimit(nil)
                                .foregroundColor(.white)
                            Text("24")
                                .font(.custom("SuisseBold", size: 25))
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 1.0)
                                .foregroundColor(.white)
                        }
                        Text("kmh")
                            .font(.custom("SuisseBold", size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }
                    VStack {
                        VStack {
                            Text("Air\nPressure")
                                .font(.custom("SuisseBold", size: 12))
                                .multilineTextAlignment(.center)
                                .frame(width: 80, height: 40, alignment: .center)
                                .foregroundColor(.white)
                            Text("1022")
                                .font(.custom("SuisseBold", size: 25))
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 1.0)
                                .foregroundColor(.white)
                        }
                        Text("hPa.")
                            .font(.custom("SuisseBold", size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }
                    
                    VStack {
                        VStack {
                            Text("Water\nTemperature")
                                .font(.custom("SuisseBold", size: 12))
                                .multilineTextAlignment(.center)
                                .frame(width: 80, height: 40, alignment: .center)
                                .foregroundColor(.white)
                            Text("15")
                                .font(.custom("SuisseBold", size: 25))
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 1.0)
                                .foregroundColor(.white)
                        }
                        Text("ºC")
                            .font(.custom("SuisseBold", size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }
                }
                .padding(.top, 25.0)
                .padding(.bottom,40)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .background(Color(.black))
        .ignoresSafeArea(.all)
    }
    
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
            .previewDevice("iPhone 11 Pro")
    }
}
