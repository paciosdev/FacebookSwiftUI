//
//  ContentView.swift
//  facebook
//
//  Created by Kekko Paciello on 28/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("cover")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .overlay(Image(systemName: "magnifyingglass").shadow(color: .black, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/).foregroundColor(.white).font(.system(size: 30, weight: .semibold, design: .rounded)).padding(30), alignment: .topTrailing)
            
            VStack{
                Image("propic")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Circle().stroke(Color.blue, lineWidth: 20).padding(4)
                                    .background(Circle().frame(width: 175, height: 175, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.white)))
                
                Text("Sarah Corruccini")
                    .font(.system(size: 26, weight: .semibold, design: .default))
                    .padding(.top)
                
                Text("More travel. More puppies. More love. More Vegetables. More life")
                    .font(.system(size: 18, weight: .regular, design: .default))
                    .frame(width: UIScreen.main.bounds.width - 100)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                
                HStack(spacing: 30){
                    VStack{
                        Circle()
                            .frame(width: 55, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.secondary.opacity(0.2))
                            .overlay(Image(systemName: "plus.circle.fill").foregroundColor(.blue).font(.system(size: 26, weight: .bold, design: .rounded)))
                        
                        Text("Add Story")
                            .foregroundColor(.blue)
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                    }
                    
                    VStack{
                        Circle()
                            .frame(width: 55, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.secondary.opacity(0.2))
                            .overlay(Image("edit_profile").resizable().scaledToFit().frame(width: 26, height: 26, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
                        
                        Text("Edit Profile")
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                    }
                    
                    VStack{
                        Circle()
                            .frame(width: 55, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.secondary.opacity(0.2))
                            .overlay(Image(systemName: "list.bullet").font(.system(size: 26, weight: .bold, design: .rounded)))
                        
                        Text("Activity Log")
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                    }
                    
                    VStack{
                        Circle()
                            .frame(width: 55, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.secondary.opacity(0.2))
                            .overlay(Image(systemName: "arrowshape.turn.up.left.fill").font(.system(size: 26, weight: .bold, design: .rounded)))
                        
                        Text("More")
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                    }
                }
                
                Divider()
                    
                HStack{
                    Text("About")
                        .font(.system(size: 22, weight: .bold, design: .default))
                    Spacer()
                    Button("See All"){}
                }
                .padding(.top)
                
                VStack(alignment: .leading, spacing: 20){
                    HStack{
                        Image(systemName: "bag.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 22, weight: .bold, design: .default))
                        
                        Group{
                            Text("Chef at ")
                            +
                            Text("Healthy Eats")
                                .fontWeight(.semibold)
                        }
                        .font(.system(size: 20))
                        Spacer()
                    }
                    
                    HStack{
                        Image(systemName: "house.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 22, weight: .bold, design: .default))
                        
                        Group{
                            Text("Lives in ")
                            +
                            Text("London, United Kingdom")
                                .fontWeight(.semibold)
                        }
                        .font(.system(size: 20))
                        Spacer()
                    }
                    
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.secondary)
                            .font(.system(size: 22, weight: .bold, design: .default))
                        
                        Group{
                            Text("From ")
                            +
                            Text("Genoa, Italy")
                                .fontWeight(.semibold)
                        }
                        .font(.system(size: 20))
                        Spacer()
                    }
                }
                .padding(.top)
                
                Divider()
                
                HStack{
                    Text("Featured")
                        .font(.system(size: 22, weight: .bold, design: .default))
                    Spacer()
                    Button("See All"){}
                }
                .padding(.top)
                
                HStack{
                    Image("cover")
                        .resizable()
                        .scaledToFill()
                    
                    Image("cover")
                        .resizable()
                        .scaledToFill()
                }

            }
            .padding(.horizontal)

            .offset(y: -100)
                

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
