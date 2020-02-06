//
//  ContentView.swift
//  Batman
//
//  Created by Enzo Maruffa Moreira on 04/02/20.
//  Copyright © 2020 Enzo Maruffa Moreira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var menuOpen: Bool = false
    @State var showPopUp = false
    
    var body: some View {
        
        //        GeometryReader { geometry in
        //            VStack {
        //                ZStack {
        //                    if self.showPopUp {
        //                        PlusMenu()
        //                            .offset(y: -geometry.size.height/6)
        //                    }
        //                    HStack {
        //                        ZStack {
        //                            Circle()
        //                                .foregroundColor(Color.white)
        //                                .frame(width: 75, height: 75)
        //                            Image(systemName: "plus.circle.fill")
        //                                .resizable()
        //                                .aspectRatio(contentMode: .fit)
        //                                .frame(width: 75, height: 75)
        //                                .foregroundColor(.blue)
        //                                .rotationEffect(Angle(degrees: self.showPopUp ? 90 : 0))
        //                        }
        //                        .offset(y: -geometry.size.height/10/2)
        //                        .onTapGesture {
        //                            withAnimation {
        //                                self.showPopUp.toggle()
        //                            }
        //                        }
        //                    }
        //                    .frame(width: geometry.size.width, height: geometry.size.height/10)
        //                    .background(Color.white.shadow(radius: 2))
        //                }
        //            }.edgesIgnoringSafeArea(.bottom)
        //        }
        //
        //    }
        
        
        NavigationView {
            //            ZStack {
            //                //MapView()
            //                //Resto
            //            }
            VStack {
                Image("Bat")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 10, idealWidth: nil, maxWidth: nil, minHeight: 10, idealHeight: nil, maxHeight: 100, alignment: .center)
                
                Spacer()
                
                if menuOpen {
                    NavigationLink(destination: CharactersListView()) {
                        Image("BatmanButton")
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .center)
                            .animation(.easeInOut)
                            .rotationEffect(Angle(degrees: self.menuOpen ? 180 : 0))
                    }
                }
                
                Button(action: {
                    print("cebolinhaaa`")
                    print("oi? \(CharacterSingleton.shared.characters.count)")
                    withAnimation(.easeInOut(duration: 0.8)) {
                        self.menuOpen.toggle()
                    }
                }) {
                    Image("BatmanButton")
                        .resizable()
                        .frame(width: 80, height: 80, alignment: .center)
                        .rotationEffect(Angle(degrees: self.menuOpen ? 180 : 0))
                }
            }
        }.navigationBarHidden(true)
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

//
//struct PlusMenu: View {
//    var body: some View {
//        HStack(spacing: 50) {
//            ZStack {
//                Circle()
//                    .foregroundColor(Color.blue)
//                    .frame(width: 70, height: 70)
//                Image(systemName: "camera")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .padding(20)
//                    .frame(width: 70, height: 70)
//                    .foregroundColor(.white)
//            }
//            ZStack {
//                Circle()
//                    .foregroundColor(Color.blue)
//                    .frame(width: 70, height: 70)
//                Image(systemName: "photo")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .padding(20)
//                    .frame(width: 70, height: 70)
//                    .foregroundColor(.white)
//            }
//        }
//            .transition(.scale)
//    }
//}
