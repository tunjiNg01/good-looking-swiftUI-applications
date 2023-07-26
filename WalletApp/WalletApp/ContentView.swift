//
//  ContentView.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 03/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("walleticon")
            Rectangle()
                .fill(
                    //Color.primary
                    Color("blue")
                )
                .opacity(0.95)
            VStack(){
                HStack{
                    
                    Circle()
                        .stroke(lineWidth: 2)
                        .fill(Color("pink"))
                        .frame(width: 50)
                        .overlay{
                        Image(systemName: "plus")
                            .font(.title)
                            .foregroundColor(Color("pink"))
                    }
                    Spacer()
                    Text("New request")
                        .font(.headline)
                        .foregroundColor(Color("pink"))
                    Spacer()
                    Image("profile")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 50)
                    
                  
                }
                Spacer()
                VStack(alignment: .center, spacing: 20){
                    ProfileAvartar()
                    Text("Hammed olatunji")
                        .foregroundColor(.white).font(.title2)
                    HStack(alignment: .bottom){
                        Text("$").font(.title)
                            .padding([.bottom], 7)
                            .foregroundColor(.white)
                        Text("950.00").font(.system(size: 48)).foregroundColor(.white)
                    }
                    HStack{
                        Text("Swipe left ").font(.title2).foregroundColor(Color("pink"))
                        Circle()
                            .fill(Color("pink"))
                            .frame(width: 40)
                    }
                    .padding([.trailing, .leading], 24)
                    .padding([.top, .bottom], 12)
                    
                    .overlay{
                        RoundedRectangle(cornerRadius: 36)
                            .stroke(lineWidth: 2)
                            .fill(Color("pink"))
                           
                    }
                }
                Spacer()
                
            }
            .padding(36)

        }
        .ignoresSafeArea()
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
