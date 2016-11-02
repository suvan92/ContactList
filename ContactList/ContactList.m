//
//  ContactList.m
//  ContactList
//
//  Created by Suvan Ramani on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(id)init {
    
    self = [super init];
    
    _listOfContacts = [[NSMutableArray alloc] init];
    
    return self;
}

-(void)addNewContact:(Contact *)newContact {
    
    [self.listOfContacts addObject:newContact];
    
}

-(void)listAllContacts{
    
    for (int i = 0; i < self.listOfContacts.count; i++) {
        
        Contact *contact = [self.listOfContacts objectAtIndex:i];
        
        NSLog(@"%d: %@", i, contact.name);
        
    }
}

-(void)printContact:(NSInteger)contactIndex {
    
    Contact *contact = [self.listOfContacts objectAtIndex:contactIndex];
    
    NSLog(@"%@", contact.name);
    NSLog(@"%@", contact.emailAddress);
    
    
}



@end
