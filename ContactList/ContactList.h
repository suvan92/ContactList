//
//  ContactList.h
//  ContactList
//
//  Created by Suvan Ramani on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *listOfContacts;

-(id)init;

-(void)addNewContact:(Contact *)newContact;

-(void)listAllContacts;

-(void)printContact: (NSInteger)contactIndex;

@end
