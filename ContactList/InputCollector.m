//
//  InputCollector.m
//  ContactList
//
//  Created by Suvan Ramani on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(void)displayMenu {
    
    printf("\n");
    printf("Menu: \n");
    printf("new - Create a new contact \n");
    printf("list - List all existing contacts \n");
    printf("show - Show all details for a contact \n");
    printf("quit - Exit Application \n");
    printf("\n");
    
}

-(NSString*)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    
    char userInput[255];
    
    fgets(userInput, 255, stdin);
    
    NSString *userInputString = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
    
    userInputString = [userInputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    return userInputString;
}

@end
