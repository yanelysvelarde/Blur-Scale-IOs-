//
//  ContentView.swift
//  AppIntro
//
//  Created by Yanelys on 5/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var sliderValue = 1.0
    @State var letter:String = "B"
    
    var minimumValue = 0.0
    var maximumValue = 5.0
    
    var body: some View {
        
        
        //===========================================
        VStack {
            Spacer()
            
            HStack{
                VStack{
                    
                    Text("A").padding()
                    Text("B").padding()
                    
                    
                }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                
                
                HStack{
                    Text("A").padding()
                    
                    Text(letter).fontWeight(.bold).foregroundColor(Color.green).padding().font(.largeTitle).blur(radius: CGFloat(sliderValue))
                    
                    Text("c").padding()
                    
                }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                
                
            }
            
            Spacer()
            
            
            
            
            Text("\(Int(sliderValue))")
            
            HStack{
                
                Image(systemName: "minus")
                
                
                Slider(value: $sliderValue, in: minimumValue...maximumValue)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .accentColor(Color.green) //color
                    .overlay{
                        RoundedRectangle(cornerRadius: 15.0) //corner round
                            .stroke(lineWidth: 2.0) //border
                            .foregroundColor(Color.green) //color of the border
                    }

                Image(systemName: "plus")
                
            }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //end hstack
            
            Image(systemName: "hare")
                .scaleEffect(CGFloat(sliderValue))//scale w slider value
                .frame(width: 200, height: 100, alignment: .center)
            
            
            HStack {
                
                
                Button(action: {
                    print("1 pressed")
                    sliderValue = Double.random(in: minimumValue...maximumValue)
                }, label: {
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame( width: 120)
                })//end of button 1
                
                Button(action: {
                    print("2 pressed")
                    letter = rndLetter()
                }, label: {
                    Image("2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame( width: 120)
                })//end of button 2

            }//end of hstack
            
            
            Spacer()
            
        }//Vstack outer
        //===========================================
        
        
    }//end body
}//end view


//-------------------------------------

func rndLetter() ->String{
    
    let letters = ["A", "B", "C", "D", "E", "F"]
    let rndLetter = letters[Int.random(in: 0..<letters.count)]
    return rndLetter
    
}



//=====================================
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//=====================================
//#Preview {
//ContentView()
//}
