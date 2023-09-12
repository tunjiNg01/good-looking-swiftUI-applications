//
//  ContentView.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 03/06/2023.
//

import SwiftUI

struct ContentView: View {
    let transactions: [Transactions]
    var body: some View {
        NavigationStack{
            ZStack {
                // background
                Color("blue")
                    .ignoresSafeArea()
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
                        
                        
                    }.padding(18)
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
                        
                    }
                    NavigationLink{
                        TransactionViews(transactions: transactions)
                    }label: {
                        ActionButtonView()
                    }
                  
                    
                    Spacer()
                    CardStack()
                }
                
                
            }
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(transactions: Transactions.previewData)
    }
}
