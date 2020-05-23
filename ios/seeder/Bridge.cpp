//
//  Bridge.cpp
//  bitcoin-seeder-ios
//
//  Created by RandyMcMillan.
//  Copyright © 2020 RandyMcMillan.net All rights reserved.
//

#include "Bridge.hpp"

Greeting::Greeting() {
    greeting = "Hello C++!";
}

std::string Greeting::greet() {
    return greeting;
}
