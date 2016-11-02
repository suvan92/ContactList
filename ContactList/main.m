//
//  main.m
//  ContactList
//
//  Created by Suvan Ramani on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc] init];
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        while (YES) {
            
            [inputCollector displayMenu];
            
            NSString *userInput = [inputCollector inputForPrompt:@"What would you like to do?"];
            
            if ([[userInput lowercaseString] isEqualToString:@"quit"]) {
                
                printf("Good bye! \n");
                break;
                
            } else if ([[userInput lowercaseString] isEqualToString:@"new"]) {
                
                Contact *newContact = [[Contact alloc] init];
                
                [newContact setName:[inputCollector inputForPrompt:@"Enter new contact name: \n"]];
                
                [newContact setEmailAddress:[inputCollector inputForPrompt:@"Enter contact email: \n"]];
                
                [contactList addNewContact:newContact];
                
                NSLog(@"New contact Added! \n");
                
            } else if ([[userInput lowercaseString] isEqualToString:@"list"]) {
                
                [contactList listAllContacts];
                
            } else if ([[userInput lowercaseString] isEqualToString:@"show"]) {
                
                NSString *arrayIndexString = [inputCollector inputForPrompt:@"Which contact's details would you like to see? (input index number) \n"];
                
                NSInteger arrayIndex = [arrayIndexString integerValue];
                
                if (arrayIndex < [contactList.listOfContacts count]) {
                    
                    [contactList printContact:arrayIndex];
                    
                }
                
            }
        }
        
        
        
    }
    return 0;
}
