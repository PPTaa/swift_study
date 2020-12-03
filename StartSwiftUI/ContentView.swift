//
//  ContentView.swift
//  StartSwiftUI
//
//  Created by 맥북에어 on 2020/12/02.
//

import SwiftUI

struct ContentView: View {
    
    @State // 값의 변화를 감지 -> 처음부터 view애 적용
    private var isActivate: Bool = false

    // body
    var body: some View {
        
        
        NavigationView{
            VStack {
                HStack {
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()
                    
                }// Hstack
                .padding(isActivate ? 50.0 : 10.0)
                //
                .background(isActivate ? Color.yellow: Color.blue)
                // 탭 제스쳐 추가
                .onTapGesture {
                    print("hstack click")
                    // 애니메이션 추가
                    withAnimation{
                        // toggle() 알아서 t/f 변경
                        self.isActivate.toggle()
                    }
                } // hstack end
            
            //navi 버튼 링크
            NavigationLink(destination: MyTextView() ) {
                Text("네비게이션 버튼")
                    .fontWeight(.heavy)
                    .font(.system(size: 40))
                    .padding(10)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
            }
            
            }
        } // navigationview
        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
