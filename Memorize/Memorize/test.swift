//
//  test.swift
//  Memorize
//
//  Created by wk on 2020/8/25.
//  Copyright © 2020 CS193p. All rights reserved.
//

import SwiftUI

struct test: View {
    var body: some View {
        HStack(alignment: .bottom) {
//            Text("Hello World.")
            RoundedRectangle(cornerRadius: 70, style: .circular)
                .stroke().padding(3).foregroundColor(Color.yellow)
            
        }.padding(3)
    }
}

func fun() {
    print("hello")
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
