//
//  ContentView.swift
//  Shared
//
//  Created by Halil Kuru on 15.08.2022.
//

import SwiftUI

struct YemekSatirTasarimi: View {
    var yemek = Yemekler()
    var body: some View {
        
        GeometryReader { geometry in
            
            HStack{
                
                Image(self.yemek.yemekResimAdi!).resizable().frame(width: 100, height: 100)
                      
                    
            VStack(alignment:.leading,spacing: 50){
                    Text(self.yemek.yemekAdi!)
                Text("\(String(format: "%.2f",self.yemek.yemekFiyat!)) \u{20BA}").foregroundColor(Color.blue)
                }
                
                Spacer()
                
                Text("Sipariş Ver").foregroundColor(Color.red).onTapGesture {
                    print("Sipariş : \(self.yemek.yemekAdi!)")
                }
            }.frame(width:geometry.size.width, height: 150)
            
        }
        
    }
}

    struct ContentView: View {
    
    @State private var yemeklerListesi = [Yemekler]()
    
    var body: some View {
        
        NavigationView{
            
            List {
                ForEach(yemeklerListesi){ yemek in
                    
                    NavigationLink(destination: YemekDetaySayfa(gelenYemek: yemek)) {
                        
                        
                        YemekSatirTasarimi(yemek: yemek)

                    }
                    
                    
                }.frame(height:150)
            }.navigationBarTitle("Yemekler")
        }.onAppear(){
            
            let y1 = Yemekler(id: 1, yemekAdi: "Ayran", yemekResimAdi: "ayran", yemekFiyat: 4.0)
            let y2 = Yemekler(id: 2, yemekAdi: "Baklava", yemekResimAdi: "baklava", yemekFiyat: 60)
            let y3 = Yemekler(id: 3, yemekAdi: "Fanta", yemekResimAdi: "fanta", yemekFiyat: 7.0)
            let y4 = Yemekler(id: 4, yemekAdi: "Izgara Somon", yemekResimAdi: "izgarasomon", yemekFiyat: 80.0)
            let y5 = Yemekler(id: 5, yemekAdi: "Izgara Tavuk", yemekResimAdi: "izgaratavuk", yemekFiyat: 50.0)
            let y6 = Yemekler(id: 6, yemekAdi: "Kadayıf", yemekResimAdi: "kadayif", yemekFiyat: 45.0)
            let y7 = Yemekler(id: 7, yemekAdi: "Kahve", yemekResimAdi: "kahve", yemekFiyat: 25.0)
            let y8 = Yemekler(id: 8, yemekAdi: "Köfte", yemekResimAdi: "kofte", yemekFiyat: 30.0)
            let y9 = Yemekler(id: 9, yemekAdi: "Lazanya", yemekResimAdi: "lazanya", yemekFiyat: 4.0)
            let y10 = Yemekler(id: 10, yemekAdi: "Makarna", yemekResimAdi: "makarna", yemekFiyat: 4.0)
            let y11 = Yemekler(id: 11, yemekAdi: "Pizza", yemekResimAdi: "pizza", yemekFiyat: 4.0)
            let y12 = Yemekler(id: 12, yemekAdi: "Su", yemekResimAdi: "su", yemekFiyat: 4.0)
            let y13 = Yemekler(id: 13, yemekAdi: "Sütlaç", yemekResimAdi: "sutlac", yemekFiyat: 4.0)
            let y14 = Yemekler(id: 14, yemekAdi: "Tiramisu", yemekResimAdi: "tiramisu", yemekFiyat: 4.0)
            
            
            self.yemeklerListesi.append(y1)
            self.yemeklerListesi.append(y2)
            self.yemeklerListesi.append(y3)
            self.yemeklerListesi.append(y4)
            self.yemeklerListesi.append(y5)
            self.yemeklerListesi.append(y6)
            self.yemeklerListesi.append(y7)
            self.yemeklerListesi.append(y8)
            self.yemeklerListesi.append(y9)
            self.yemeklerListesi.append(y10)
            self.yemeklerListesi.append(y11)
            self.yemeklerListesi.append(y12)
            self.yemeklerListesi.append(y13)
            self.yemeklerListesi.append(y14)

            
        }
    }
    }
        
struct YemekDetaySayfa:View {
    
    var gelenYemek = Yemekler()
    
    var body : some View {
        
        VStack{
            Image(gelenYemek.yemekResimAdi!)
            
            Text("\(String(format:"%.2f",gelenYemek.yemekFiyat!)) \u{20BA}").font(.largeTitle)
            
            Spacer()
            
            Text("Sipariş Ver").font(.largeTitle)
            .frame(width: 300, height: 100)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10.0)
        }.navigationBarTitle(gelenYemek.yemekAdi!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
